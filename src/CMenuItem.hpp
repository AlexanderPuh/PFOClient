#ifndef CMENUITEM_HPP
#define CMENUITEM_HPP
#include "IItems.hpp"
#include <QObject>
#include "dictioanary.hpp"

class CMenuItem : public IItems
{
Q_OBJECT
public:
    CMenuItem();
    ~CMenuItem();

    virtual void draw(const QByteArray& data);
    virtual void setData();
    virtual bool isActive();
    PFC::Items getItemType();
private:
    const PFC::Items mItem;
};

#endif//CMENUITEM_HPP
