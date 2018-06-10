#ifndef CMAININTERFACE_HPP
#define CMAININTERFACE_HPP

#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <QSettings>
#include <QQuickStyle>
#include <QApplication>
#include <QDebug>
#include <QTcpSocket>
#include "dictioanary.hpp"
#include <iostream>
#include "ItemsInc.hpp"
#include "CPFCInterface.hpp"

using namespace PFC;
class CPFCInterface;
class CMainInterface : public QObject{
    Q_OBJECT
public:
    explicit CMainInterface(QObject *parent = nullptr);
    ~CMainInterface();
    void hadleUserCredentionals();
    int UICreator(int argc, char* argv[]);
    QTcpSocket* getSocket();

private:
    CPFCInterface* mPfcInterface;
    QTcpSocket* mTcpSocket;

private slots:
    void slotConnected();
    void slotError(QAbstractSocket::SocketError err);

};

#endif//CMAININTERFACE_HPP
