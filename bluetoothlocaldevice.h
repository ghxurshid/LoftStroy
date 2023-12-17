#ifndef BLUETOOTHLOCALDEVICE_H
#define BLUETOOTHLOCALDEVICE_H

#include <QObject>

class BluetoothLocalDevice : public QObject
{
    Q_OBJECT
public:
    explicit BluetoothLocalDevice(QObject *parent = nullptr);

signals:

public slots:
};

#endif // BLUETOOTHLOCALDEVICE_H