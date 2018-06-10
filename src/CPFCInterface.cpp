#include "src/CPFCInterface.hpp"

CPFCInterface::CPFCInterface(QObject* parent) :
                QObject (parent)
{
    registerItems();
}

CPFCInterface::~CPFCInterface()
{

}

void CPFCInterface::sendRequest()
{

}

void CPFCInterface::setData()
{

}



void CPFCInterface::construct(QTcpSocket *socket)
{
    connect(socket ,SIGNAL(readyRead()), SLOT(slotReadyRead(socket)));
}

void CPFCInterface::registerItems()
{
    mItems.push_back(std::make_shared<CCourseItem>());
    mItems.push_back(std::make_shared<CLectionItem>());
    mItems.push_back(std::make_shared<CMenuItem>());
    mItems.push_back(std::make_shared<CProgressItem>());
    mItems.push_back(std::make_shared<CUserItem>());

}

void CPFCInterface::reserveQueue(const Items &items)
{
    mMessagesQueue.push_back(items);
}



void CPFCInterface::slotReadyRead(QTcpSocket *socket)
{
    QByteArray msg(socket->readAll());

    for(int i = 0; i< mItems.size() ; i++)
    {
        for( int j = 0; j < mMessagesQueue.size(); j++)
        {
            if(mItems.at(i).operator->()->getItemType() == mMessagesQueue.at(j))
            {
                mItems.at(i).get()->draw(msg);
            }
        }
    }

    
}




