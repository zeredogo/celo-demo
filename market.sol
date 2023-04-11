// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

contract Market {

    int minute; 
    address payable owner;
    uint internal productsLength = 0;
    
    struct Product {
        address payable owner;
        string name;
        string image;
        string description;
        string location;
        string sell;
        uint price;
        uint sale;
        int bet;
        bool sold;
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
        int _bet,
        bool _sol
    ) public {
        uint _sold = 0;
        int _bet = -15;
        product[_index] = Product(
            (msg.sender),
            _name,
            _image,
            _description,
            _location,
            _price,
            _sold,
            _sell,
            _sale,
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