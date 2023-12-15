#include "bluetoothdevicelistmodel.h"

BluetoothDeviceListModel::BluetoothDeviceListModel(QObject *parent)
    : QAbstractListModel(parent) {
    // Здесь можно добавить начальные данные в модель
    m_data.append("Item 1");
    m_data.append("Item 2");
    m_data.append("Item 3");

    QObject::connect(&m_agent, &QBluetoothDeviceDiscoveryAgent::deviceDiscovered, &BluetoothDeviceListModel::onDeviceDiscovered);
    QObject::connect(&m_agent, &QBluetoothDeviceDiscoveryAgent::deviceUpdated, &BluetoothDeviceListModel::onDeviceUpdated);
    m_agent.start();
}

int BluetoothDeviceListModel::rowCount(const QModelIndex &parent) const
{
    Q_UNUSED(parent);
    return m_data.count();
}

QVariant BluetoothDeviceListModel::data(const QModelIndex &index, int role) const
{
    if (!index.isValid())
        return QVariant();

    if (index.row() < 0 || index.row() >= m_data.count())
        return QVariant();

    if (role == Name)
        return m_data[index.row()];

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
    return roles;
}
