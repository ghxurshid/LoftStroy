#include <QDebug>
#include <QFile>
#include <QDataStream>
#include "bluetoothlocaldevice.h"

#ifdef Q_OS_ANDROID
#include <QtAndroidExtras>
#endif

BluetoothLocalDevice::BluetoothLocalDevice(QObject *parent) : QObject(parent)
{
    m_socket = new QBluetoothSocket(QBluetoothServiceInfo::RfcommProtocol);

    QObject::connect(m_socket, &QBluetoothSocket::connected, this, &BluetoothLocalDevice::onDeviceConnected);
    QObject::connect(m_socket, &QBluetoothSocket::disconnected, this, &BluetoothLocalDevice::onDeviceDisconnected);
    QObject::connect(m_socket, &QBluetoothSocket::stateChanged, this, &BluetoothLocalDevice::onStateChanged);
    QObject::connect(m_socket, QOverload<QBluetoothSocket::SocketError>::of(&QBluetoothSocket::error), this, &BluetoothLocalDevice::onErrorOccured);
}

BluetoothLocalDevice::~BluetoothLocalDevice()
{
    if (m_socket->isOpen()) m_socket->close();
    delete m_socket;
    m_socket = nullptr;
}

QString BluetoothLocalDevice::name()
{
    auto name = m_selectedDevice.name();
    return name.isEmpty() ? "..." : name;
}

int BluetoothLocalDevice::status()
{
    int state = 2;

    switch (m_socket->state())
    {
        case QBluetoothSocket::UnconnectedState:
        case QBluetoothSocket::BoundState: state = 2; break;

        case QBluetoothSocket::ServiceLookupState:
        case QBluetoothSocket::ConnectingState: state = 1; break;

        case QBluetoothSocket::ConnectedState:
        case QBluetoothSocket::ListeningState:
        case QBluetoothSocket::ClosingState: state = 0; break;
    }

    return state;
}

void BluetoothLocalDevice::buttonClick()
{
    if (m_socket->isOpen())
        disconnectFromSelectedDevice();
    else connectToSelectedDevice();
}

void BluetoothLocalDevice::onErrorOccured(QBluetoothSocket::SocketError error)
{
    Q_UNUSED(error);   
    emit errorOccured(m_socket->errorString());
}

void BluetoothLocalDevice::sendData(bool allPressed, bool randPressed, bool entOn, bool floorOn, bool appatmentOn, int entValue, int floorValue, int apartmentValue)
{
    if (m_socket->isOpen() && m_socket->isWritable())
    {
        QString formatedString = QString("**%1,%2,%3,%4,%5,%6,%7,%8##")
                                        .arg(allPressed ? "1" : "0")
                                        .arg(randPressed ? "1" : "0")
                                        .arg(entOn ? "1" : "0")
                                        .arg(floorOn ? "1" : "0")
                                        .arg(appatmentOn ? "1" : "0")
                                        .arg(entValue > 0 ? entValue : 0)
                                        .arg(floorValue > 0 ? floorValue : 0)
                                        .arg(apartmentValue > 0 ? apartmentValue : 0);

        formatedString.push_back('\n');
        auto packet = formatedString.toUtf8();
        m_socket->write(packet.constData(), packet.size());
    }
}

void BluetoothLocalDevice::onSelected(const QBluetoothDeviceInfo deviceInfo)
{
    disconnectFromSelectedDevice();
    m_selectedDevice = deviceInfo;
    connectToSelectedDevice();

    emit nameChanged();
}

void BluetoothLocalDevice::onDeviceConnected()
{
    emit statusChanged();
}

void BluetoothLocalDevice::onDeviceDisconnected()
{
    emit statusChanged();
}

void BluetoothLocalDevice::onStateChanged(QBluetoothSocket::SocketState state)
{
    Q_UNUSED(state)
    emit statusChanged();
}

void BluetoothLocalDevice::connectToSelectedDevice()
{
    if (m_selectedDevice.isValid())
    {
        m_socket->connectToService(m_selectedDevice.address(), QBluetoothUuid::SerialPort);
    }
}

void BluetoothLocalDevice::disconnectFromSelectedDevice()
{
    if (m_socket->isOpen()) m_socket->close();
}
