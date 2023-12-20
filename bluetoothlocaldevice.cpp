#include <QDebug>
#include <QFile>
#include <QDataStream>
#include <QtAndroidExtras>
#include "bluetoothlocaldevice.h"

BluetoothLocalDevice::BluetoothLocalDevice(QObject *parent) : QObject(parent)
{
    setStatus(3);

    QObject::connect(&m_socket, &QBluetoothSocket::connected, this, &BluetoothLocalDevice::onDeviceConnected);
    QObject::connect(&m_socket, &QBluetoothSocket::disconnected, this, &BluetoothLocalDevice::onDeviceDisconnected);
    QObject::connect(&m_socket, &QBluetoothSocket::stateChanged, this, &BluetoothLocalDevice::onStateChanged);
    QObject::connect(&m_socket, QOverload<QBluetoothSocket::SocketError>::of(&QBluetoothSocket::error), this, &BluetoothLocalDevice::onErrorOccured2);

}

QString BluetoothLocalDevice::name()
{
    auto name = m_selectedDevice.name();
    return name.isEmpty() ? "..." : name;
}

int BluetoothLocalDevice::status()
{
    int state = 2;

    switch (m_socket.state())
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

void BluetoothLocalDevice::onButtonClicked()
{
    connectToSelectedDevice();
}

void BluetoothLocalDevice::onErrorOccured2(QBluetoothSocket::SocketError error)
{
    Q_UNUSED(error);
    qDebug() << m_socket.errorString();
    emit errorOccured(m_socket.errorString());
}

void BluetoothLocalDevice::sendData(bool allPressed, bool randPressed, bool entOn, bool floorOn, bool flatOn, int entValue, int floorValue, int flatValue)
{
    if (m_socket.isOpen() && m_socket.isWritable())
    {
        quint8 flags = 0;
        flags |= allPressed ? (0x01 << 4) : 0x00;
        flags |= randPressed ? (0x01 << 3) : 0x00;
        flags |= entOn ? (0x01 << 2) : 0x00;
        flags |= floorOn ? (0x01 << 1) : 0x00;
        flags |= flatOn ? (0x01 << 0) : 0x00;


    }
}

void BluetoothLocalDevice::onSelected(const QBluetoothDeviceInfo deviceInfo)
{
    m_selectedDevice = deviceInfo;
    qDebug() << deviceInfo.name();
    emit nameChanged();
    connectToSelectedDevice();
    //TODO
}

void BluetoothLocalDevice::onDeviceConnected()
{
    setStatus(0);
    emit statusChanged();
}

void BluetoothLocalDevice::onDeviceDisconnected()
{
    setStatus(3);
    emit statusChanged();
}

void BluetoothLocalDevice::onStateChanged(QBluetoothSocket::SocketState state)
{

}

void BluetoothLocalDevice::setStatus(int value)
{
    m_status = value < 0 ? 0 : value > 3 ? 3 : value;
    emit statusChanged();
}

void BluetoothLocalDevice::connectToSelectedDevice()
{
    m_socket.connectToService(m_selectedDevice.address(), QBluetoothUuid(QBluetoothUuid::SerialPort));
    setStatus(2);
}

void requestPermissions() {
    QtAndroid::PermissionResultMap result = QtAndroid::requestPermissionsSync(
        QStringList() << "android.permission.READ_EXTERNAL_STORAGE" << "android.permission.WRITE_EXTERNAL_STORAGE",
        QtAndroid::PermissionResultMap());

    // Проверка результатов запроса разрешений
    if (result["android.permission.READ_EXTERNAL_STORAGE"] == QtAndroid::PermissionResult::Denied) {
        // Разрешение не предоставлено, обработайте этот случай
    }
    // Добавьте обработку других результатов для WRITE_EXTERNAL_STORAGE
}

void saveDeviceInfo(const QBluetoothDeviceInfo &device) {
    QFile file("bluetooth_device.dat");
    if (file.open(QIODevice::WriteOnly)) {
        QDataStream out(&file);
        out << device;
        file.close();
    }
}
