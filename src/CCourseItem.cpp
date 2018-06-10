#include "src/CCourseItem.hpp"


CCourseItem::CCourseItem() :
                        mItem(PFC::Items::COURSE_ITEM)
{

}

CCourseItem::~CCourseItem()
{

}

void CCourseItem::draw(const QByteArray &data)
{

}

void CCourseItem::setData()
{

}

bool CCourseItem::isActive()
{

}

Items CCourseItem::getItemType()
{
    return mItem;
}
