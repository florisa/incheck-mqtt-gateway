#include "ic_mqtt_gateway.h"


Ic_MQTT_gateway::Ic_MQTT_gateway()
{

    mqtt_client_ = new QMqttClient();

    tcpServer_ = new QTcpServer();



}
