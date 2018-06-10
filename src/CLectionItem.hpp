#ifndef CLECTIONITEM_HPP
#define CLECTIONITEM_HPP

#include "CCourseItem.hpp"
#include "dictioanary.hpp"
#include <QObject>
class CLectionItem : public CCourseItem
{
Q_OBJECT
public:
    CLectionItem();
    ~CLectionItem();

    virtual void draw(const QByteArray& data);
    virtual void setData();
    virtual bool isActive();
    PFC::Items getItemType();
private:
    const PFC::Items mItem;
};

#endif//CLECTIONITEM_HPP
