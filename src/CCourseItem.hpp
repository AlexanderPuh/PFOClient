#ifndef CCOURSEITEM_HPP
#define CCOURSEITEM_HPP
#include "IItems.hpp"
#include "dictioanary.hpp"
#include <QObject>
using namespace PFC;
class CCourseItem : public IItems
{
    Q_OBJECT
public:
    CCourseItem();
    ~CCourseItem();

    virtual void draw(const QByteArray& data);
    virtual void setData();
    virtual bool isActive();
    PFC::Items getItemType();
private:
    const PFC::Items mItem;
};

#endif//CCOURSEITEM_HPP
