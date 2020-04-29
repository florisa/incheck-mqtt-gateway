#ifndef IC_MQTT_GATEWAY_H
#define IC_MQTT_GATEWAY_H

#include <QTcpServer>
#include<QtMqtt/QtMqtt>


class Ic_MQTT_gateway
{
public:
    Ic_MQTT_gateway();

private:
    QMqttClient *mqtt_client_;
    QTcpServer *tcpServer_;
    QTcpSocket *socket_;
};

#endif // IC_MQTT_GATEWAY_H
