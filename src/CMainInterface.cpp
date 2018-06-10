#include "src/CMainInterface.hpp"

CMainInterface::CMainInterface(QObject* parent) :
                QObject (parent),
                mPfcInterface(nullptr)
{

}

CMainInterface::~CMainInterface()
{

}

void CMainInterface::hadleUserCredentionals()
{
    mTcpSocket = new QTcpSocket(this);

    mTcpSocket->connectToHost(PFC::HOST_NAME, PFC::PORT_NUMBER);
    connect(mTcpSocket, SIGNAL(connected()), SLOT(slotConnected()));
    connect(mTcpSocket, SIGNAL(error(QAbstractSocket::SocketError)),
            this,         SLOT(slotError(QAbstractSocket::SocketError))
           );

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

    qmlRegisterType<CUserItem>("client.user.imp", 1 , 0, "User");

    QQmlApplicationEngine engine;
    engine.rootContext()->setContextProperty("availableStyles", QQuickStyle::availableStyles());
    engine.load(QUrl("qrc:/gallery.qml"));
    if (engine.rootObjects().isEmpty())
        return -1;
    return app.exec();
}

QTcpSocket* CMainInterface::getSocket()
{
    return mTcpSocket;
}

void CMainInterface::slotConnected()
{
    qDebug()<< "connected!";
    mPfcInterface->construct(mTcpSocket);
}

void CMainInterface::slotError(QAbstractSocket::SocketError err)
{
    QString strError =
        "Error: " + (err == QAbstractSocket::HostNotFoundError ?
                     "The host was not found." :
                     err == QAbstractSocket::RemoteHostClosedError ?
                     "The remote host is closed." :
                     err == QAbstractSocket::ConnectionRefusedError ?
                     "The connection was refused." :
                     QString(mTcpSocket->errorString())
                    );
    qDebug()<<strError;
}
