// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

contract Market {
    
    struct Product {
        address payable owner;
        string name;
        string image;
        string description;
        string location;
        uint price;
        uint sold;
    }

    mapping (uint => Product) internal products;

    function writeProduct(
        uint _index,
        string memory _name,
        string memory _image,
        string memory _description,
        string memory _location,
        uint _price
    ) public {
        
    }
}