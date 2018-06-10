#ifndef CPFCINTERFACE_HPP
#define CPFCINTERFACE_HPP

#include <vector>
#include <iostream>
#include <memory>
#include <deque>

#include "IItems.hpp"
#include <QTcpSocket>
#include <QObject>
#include <QDataStream>

#include "ItemsInc.hpp"
using namespace std;
class CPFCInterface : public QObject{
    Q_OBJECT
public:
    explicit CPFCInterface (QObject *parent = nullptr);
    ~CPFCInterface();

    void sendRequest();
    void setData();
    void construct(QTcpSocket*  socket);
    void registerItems();
    void reserveQueue(const PFC::Items& items);
public:

private:
    int currentItem;
    std::deque<PFC::Items> mMessagesQueue;
    std::vector<std::shared_ptr<IItems>> mItems;


private slots:
    void slotReadyRead   (QTcpSocket *socket);

};
#endif//CPFCINTERFACE_HPP
