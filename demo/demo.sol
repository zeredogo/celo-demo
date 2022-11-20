// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

contract Demo {
    uint internal productsLength = 0;
    string public product = "Burger";


    function transfer(address, uint256) external returns (bool);
    function approve(address, uint256) external returns (bool);    
    function transferForm(address, address, uint256) external returns (bool);
    function totalSupply() external view returns (uint256);
    function balanceOf(address) external view returns (uint256);
    function allowance(address, address) external view returns (uint256);

    event Transfer(address indexed from, address indexed to, uint256 value);
    event Approval(address indexed owner,
    
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
    )  public {
        uint _sold = 0;
        product[_index] = Product(
            payable(msg.sender),
            _name,
            _image,
            _description,
            _location,
            _price,
            _sold
        );
    }
     function writeProduct(string memory _product)public {
        product = _product; 
    }
    function readProduct() public view returns (string memory) {
        return product;
    }

     function readProduct(uint _index) public view returns (
        address payable,
        string memory,
        string memory,
        string memory,
        string memory,
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
            products[_index].sold
        );
    }
}