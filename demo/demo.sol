// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

contract Demo {
    uint internal productsLength = 0;

     struct Product {
        address payable owner;
        string name;
        string image;
        string description;
        string location;
        uint price;
        uint sold;
    }
}