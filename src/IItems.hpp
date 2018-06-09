#ifndef IITEMS_HPP
#define IITEMS_HPP

class IItems{

public:
    virtual void draw() = 0;
    virtual void setData() = 0;
    virtual bool isActive() = 0;
    virtual ~IItems()=0;

};

#endif//IITEMS_HPP
