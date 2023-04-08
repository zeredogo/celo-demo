// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

contract Market {
    
    uint internal productsLength = 0;
    
    struct Product {
        address owner;
        string name;
        string image;
        string description;
        string location;
        uint price;
        uint sold;
        int bet;
    }

    mapping (uint => Product) internal products;

    function writeProduct(
        uint _index,
        string memory _name,
        string memory _image,
        string memory _description,
        string memory _location,
        uint _price,
        uint _gross,
        int _bet
    ) public {
        uint _sold = 0;
        product[_index] = Product(
            payable(msg.sender),
            _name,
            _image,
            _description,
            _location,
            _price,
            _sold,
            _gross,
            _bet
        );
    }

    function readProduct(uint _index) public view returns (
        address payable,
        string memory,
        string memory,
        string memory,
        string memory,
        uint,
        uint,
        uint
    ) {
        return (
            products[_index].owner,
            products[_index].name,
            products[_index].image,
            products[_index].description,
            products[_index].location,
            products[_index].price,
            products[_index].sold,
            products[_index].gross
        );
    }
}