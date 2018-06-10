#include "src/CProgressItem.hpp"

CProgressItem::CProgressItem() :
               mItem(PFC::Items::PROGRESS_ITEM)
{

}

CProgressItem::~CProgressItem()
{

}

void CProgressItem::draw(const QByteArray &data)
{

}

void CProgressItem::setData()
{

}

bool CProgressItem::isActive()
{

}

PFC::Items CProgressItem::getItemType()
{
    return mItem;
}
