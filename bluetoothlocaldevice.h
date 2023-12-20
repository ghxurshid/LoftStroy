#ifndef BLUETOOTHLOCALDEVICE_H
#define BLUETOOTHLOCALDEVICE_H

#include <QObject>
#include <QBluetoothSocket>
#include <QBluetoothDeviceInfo>

class BluetoothLocalDevice : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString name READ name NOTIFY nameChanged)
    Q_PROPERTY(int status READ status NOTIFY statusChanged)
public:
    explicit BluetoothLocalDevice(QObject *parent = nullptr);

    QString name();
    int status();

signals:
    void nameChanged();
    void statusChanged();
    void errorOccured(QString message);

public slots:
    void onButtonClicked();
    void onSelected(const QBluetoothDeviceInfo deviceInfo);

    void onDeviceConnected();
    void onDeviceDisconnected();
    void onStateChanged(QBluetoothSocket::SocketState state);
    void onErrorOccured2(QBluetoothSocket::SocketError error);

    void sendData(bool allPressed, bool randPressed, bool entOn, bool floorOn,
                  bool flatOn, int entValue, int floorValue, int flatValue);

protected:
    void setStatus(int value);
    void connectToSelectedDevice();

private:
    int m_status;
    QBluetoothSocket m_socket;
    QBluetoothDeviceInfo m_selectedDevice;    
};

#endif // BLUETOOTHLOCALDEVICE_H
