#include "src/CUserItem.hpp"

CUserItem::CUserItem() :
     mItem (PFC::Items::USER_ITEM)
{

}

CUserItem::~CUserItem()
{

}

void CUserItem::draw(const QByteArray &data)
{

}

void CUserItem::setData()
{

}

bool CUserItem::isActive()
{

}

PFC::Items CUserItem::getItemType()
{
    return mItem;
}

QString CUserItem::getloginData() const
{
    return mLogin;
}

void CUserItem::setloginData(QString setloginData)
{
    mLogin = setloginData;
}

QString CUserItem::getPasswordData() const
{
    return mPassword;
}

void CUserItem::setPasswordData(QString setPasswordData)
{
    mPassword = setPasswordData;
}

void CUserItem::sendData(QString login, QString password)
{
    CMainInterface test;

    QByteArray arrayBlock;
    QDataStream in(arrayBlock);
    in<<login<<password;
    test.getSocket()->write(arrayBlock, sizeof (arrayBlock));
}

void CUserItem::sendToServer()
{

}
