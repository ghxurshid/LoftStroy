#include <QDebug>
#include "bluetoothlocaldevice.h"

BluetoothLocalDevice::BluetoothLocalDevice(QObject *parent) : QObject(parent)
{

}

void BluetoothLocalDevice::onSelected(const QBluetoothDeviceInfo deviceInfo)
{
    m_selectedDevice = deviceInfo;
    //TODO
}
