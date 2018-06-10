#ifndef IITEMS_HPP
#define IITEMS_HPP

#include <QByteArray>
#include "dictioanary.hpp"
#include <QObject>

class IItems: public QObject
{
Q_OBJECT
public:
    explicit IItems(QObject* parent = nullptr);

    virtual void draw(const QByteArray& data)= 0;
    virtual void setData() = 0;
    virtual bool isActive() = 0;
    virtual PFC::Items getItemType() = 0;

    virtual ~IItems()=0;

};

#endif//IITEMS_HPP
