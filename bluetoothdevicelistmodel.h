#ifndef BLUETOOTHDEVICELISTMODEL_H
#define BLUETOOTHDEVICELISTMODEL_H
#include <QAbstractListModel>
#include <QtBluetooth/QBluetoothDeviceDiscoveryAgent>
#include <QVector>

class BluetoothDeviceListModel : public QAbstractListModel
{
public:
    explicit BluetoothDeviceListModel(QObject *parent = nullptr);

    enum MyRoles {
        Name = Qt::UserRole + 1, // Определение пользовательской роли для QML
    };

    // Методы, необходимые для реализации абстрактной модели данных
    int rowCount(const QModelIndex &parent = QModelIndex()) const override;
    QVariant data(const QModelIndex &index, int role) const override;

protected:
    QHash<int, QByteArray> roleNames() const override;

private:
    QVector<QString> m_data;
    QBluetoothDeviceDiscoveryAgent m_agent;
};

#endif // BLUETOOTHDEVICELISTMODEL_H
