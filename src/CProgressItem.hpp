#ifndef CPROGRESSITEM_HPP
#define CPROGRESSITEM_HPP

#include "IItems.hpp"
#include <QObject>
#include "dictioanary.hpp"

class CProgressItem : public IItems
{
Q_OBJECT
public:
     CProgressItem();
    ~CProgressItem();

    virtual void draw(const QByteArray& data);
    virtual void setData();
    virtual bool isActive();
    PFC::Items getItemType();
private:
    const PFC::Items mItem;
};


#endif//CPROGRESSITEM_HPP
