// SPDX-License-Identifier: MIT


pragma solidity >=0.7.0 <0.9.0;

contract Marketplace {

    string public product = "Burger";

    function writeProduct(string memory _product) public {
        product = _product;
    }

    function readProduct() public view returns (string memory) {
        return product;
    }

    function presentProduct(string _details, string _gross uint256 _totalNumber) public view returns (string memory) {
        return _totalNumber,
        return _details;
    }
}