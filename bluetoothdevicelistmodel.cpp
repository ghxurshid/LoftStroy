#include "bluetoothdevicelistmodel.h"

BluetoothDeviceListModel::BluetoothDeviceListModel(QObject *parent)
    : QAbstractListModel(parent) {
    QObject::connect(&m_agent, &QBluetoothDeviceDiscoveryAgent::deviceDiscovered, this, &BluetoothDeviceListModel::onDeviceDiscovered);
    QObject::connect(&m_agent, &QBluetoothDeviceDiscoveryAgent::deviceUpdated, this, &BluetoothDeviceListModel::onDeviceUpdated);
    m_agent.start();
}

int BluetoothDeviceListModel::rowCount(const QModelIndex &parent) const
{
    Q_UNUSED(parent);
    return m_agent.discoveredDevices().count();
}

QVariant BluetoothDeviceListModel::data(const QModelIndex &index, int role) const
{
    if (!index.isValid())
        return QVariant();

    if (index.row() < 0 || index.row() >= m_agent.discoveredDevices().count())
        return QVariant();

    auto device = m_agent.discoveredDevices()[index.row()];

    if (role == Name)
        return device.name();

    if (role == Address)
        return device.address().toString();

    if (role == Rssi)
        return device.rssi();

    if (role == IsValid)
        return device.isValid();

    return QVariant();
}

void BluetoothDeviceListModel::onDeviceDiscovered(const QBluetoothDeviceInfo &deviceInfo)
{
    Q_UNUSED(deviceInfo)

    auto discoveredDevices = m_agent.discoveredDevices();
    beginInsertRows(QModelIndex(), discoveredDevices.count(), discoveredDevices.count());
    endInsertRows();
}

void BluetoothDeviceListModel::onDeviceUpdated(const QBluetoothDeviceInfo &deviceInfo, QBluetoothDeviceInfo::Fields updatedFields)
{
    Q_UNUSED(deviceInfo)
    Q_UNUSED(updatedFields)

    auto discoveredDevices = m_agent.discoveredDevices();
    int index = discoveredDevices.indexOf(deviceInfo);
    emit dataChanged(createIndex(index, 0), createIndex(index, 0));
}

QHash<int, QByteArray> BluetoothDeviceListModel::roleNames() const
{
    QHash<int, QByteArray> roles;
    roles[Name] = "name";
    roles[Address] = "address";
    roles[Rssi] = "rssi";
    roles[IsValid] = "isValid";
    return roles;
}
