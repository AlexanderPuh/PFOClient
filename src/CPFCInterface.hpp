#ifndef CPFCINTERFACE_HPP
#define CPFCINTERFACE_HPP

#include <vector>

#include "IItems.hpp"


class CPFCInterface{

public:



    CPFCInterface ();
    ~CPFCInterface();
    void sendRequest();
    void setData();
    void construct();

public:
    std::vector<IItems> mItems;

};
#endif//CPFCINTERFACE_HPP
