#ifndef BLUETOOTHLOCALDEVICE_H
#define BLUETOOTHLOCALDEVICE_H

#include <QObject>
#include <QBluetoothLocalDevice>
#include <QBluetoothDeviceInfo>

class BluetoothLocalDevice : public QObject
{
    Q_OBJECT
public:
    explicit BluetoothLocalDevice(QObject *parent = nullptr);

signals:

public slots:
    void onSelected(const QBluetoothDeviceInfo deviceInfo);

private:
    QBluetoothDeviceInfo m_selectedDevice;
    QBluetoothLocalDevice m_localDevice;
};

#endif // BLUETOOTHLOCALDEVICE_H
