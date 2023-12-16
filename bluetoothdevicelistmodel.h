#ifndef BLUETOOTHDEVICELISTMODEL_H
#define BLUETOOTHDEVICELISTMODEL_H
#include <QAbstractListModel>
#include <QtBluetooth/QBluetoothDeviceDiscoveryAgent>
#include <QtBluetooth/QBluetoothLocalDevice>
#include <QtBluetooth/QBluetoothDeviceInfo>
#include <QVector>

class BluetoothDeviceListModel : public QAbstractListModel
{

public:
    explicit BluetoothDeviceListModel(QObject *parent = nullptr);

    enum MyRoles {
        Name = Qt::UserRole + 1,
        Address = Qt::UserRole + 2,
        Rssi = Qt::UserRole + 3,
        IsValid = Qt::UserRole + 4
    };

    // Методы, необходимые для реализации абстрактной модели данных
    int rowCount(const QModelIndex &parent = QModelIndex()) const override;
    QVariant data(const QModelIndex &index, int role) const override;

public slots:
    void onDeviceDiscovered(const QBluetoothDeviceInfo &deviceInfo);
    void onDeviceUpdated(const QBluetoothDeviceInfo &deviceInfo, QBluetoothDeviceInfo::Fields updatedFields);

protected:
    QHash<int, QByteArray> roleNames() const override;

private:
    QBluetoothDeviceDiscoveryAgent m_agent;
    QBluetoothLocalDevice m_localDevice;
};

#endif // BLUETOOTHDEVICELISTMODEL_H
