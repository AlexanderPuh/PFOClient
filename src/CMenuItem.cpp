#include "src/CMenuItem.hpp"

CMenuItem::CMenuItem() :
    mItem(PFC::Items::MENU_ITEM)
{

}

CMenuItem::~CMenuItem()
{

}

void CMenuItem::draw(const QByteArray &data)
{

}

void CMenuItem::setData()
{

}

bool CMenuItem::isActive()
{

}

PFC::Items CMenuItem::getItemType()
{
    return mItem;
}
