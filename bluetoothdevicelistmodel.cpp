#include "bluetoothdevicelistmodel.h"

BluetoothDeviceListModel::BluetoothDeviceListModel(QObject *parent)
    : QAbstractListModel(parent) {
    // Здесь можно добавить начальные данные в модель
    m_data.append("Item 1");
    m_data.append("Item 2");
    m_data.append("Item 3");
    QBluetoothDeviceDiscoveryAgent

    m_agent.setDiscoveryMode(QBluetoothDeviceDiscoveryAgent::KnownDevices);

        QObject::connect(&discoveryAgent, &QBluetoothDeviceDiscoveryAgent::deviceDiscovered,
        [&](const QBluetoothDeviceInfo &deviceInfo){
            qDebug() << "Name:" << deviceInfo.name() << "Address:" << deviceInfo.address().toString();
        });

        discoveryAgent.start();
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

QHash<int, QByteArray> BluetoothDeviceListModel::roleNames() const
{
    QHash<int, QByteArray> roles;
    roles[Name] = "name";
    return roles;
}
