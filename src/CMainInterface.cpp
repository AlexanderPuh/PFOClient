#include "src/CMainInterface.hpp"

CMainInterface::CMainInterface(QObject* parent) :
                QObject (parent),
                mPfcInterface(nullptr)
{

}

CMainInterface::~CMainInterface()
{

}

int CMainInterface::UICreator(int argc, char *argv[])
{
    QApplication::setApplicationName("Card Game");
    QApplication::setOrganizationName("QtProject");
    QApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QApplication app(argc, argv);

    QSettings settings;
    QString style = QQuickStyle::name();
    if (!style.isEmpty())
        settings.setValue("style", style);
    else
        QQuickStyle::setStyle(settings.value("style").toString());

    QQmlApplicationEngine engine;
    engine.rootContext()->setContextProperty("availableStyles", QQuickStyle::availableStyles());
    engine.load(QUrl("qrc:/gallery.qml"));
    if (engine.rootObjects().isEmpty())
        return -1;
    return app.exec();
}
