#ifndef CUSERITEM_HPP
#define CUSERITEM_HPP

#include "IItems.hpp"
#include <QObject>
#include "dictioanary.hpp"
#include "CMainInterface.hpp"
class CUserItem : public IItems
{
Q_OBJECT
    Q_PROPERTY( QString login READ getloginData WRITE setloginData NOTIFY loginDataChanged)
    Q_PROPERTY( QString password READ getPasswordData WRITE setPasswordData NOTIFY passwordDataChanged)
public:
    explicit CUserItem();
    ~CUserItem();

    virtual void draw(const QByteArray& data);
    virtual void setData();
    virtual bool isActive();
    PFC::Items getItemType();
    QString getloginData() const;
    void setloginData(QString setloginData);
    QString getPasswordData() const;
    void setPasswordData(QString setPasswordData);

    Q_INVOKABLE
    void sendData(QString login, QString password);

private:
    QString mLogin;
    QString mPassword;
private:
    const PFC::Items mItem;
private slots:
    void sendToServer();
signals:
    void loginDataChanged();
    void passwordDataChanged();

};
#endif//CUSERITEM_HPP
