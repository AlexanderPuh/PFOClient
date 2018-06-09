#ifndef CMAININTERFACE_HPP
#define CMAININTERFACE_HPP

#include "CPFCInterface.hpp"
#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <QSettings>
#include <QQuickStyle>
#include <QApplication>
#include <QDebug>
class CMainInterface : public QObject{
public:



    explicit CMainInterface(QObject *parent = nullptr);
    ~CMainInterface();
    void hadleUserCredentionals();
    int UICreator(int argc, char* argv[]);

private:
    CPFCInterface* mPfcInterface;
};

#endif//CMAININTERFACE_HPP