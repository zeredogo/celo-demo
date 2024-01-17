// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Tran {
    string public Logo = 'Zonex, Kypto-zone, dogoempire = Paul Zere Sunday Dogo.';
    uint256 public Age = 287;
    uint256 public Price = 580;
    string
    string public Gracefullness = "The flood when and till flesh";

    function getLogo(string memory _logo) public view returns {
        return _logo;
    }

    function writeGracefullness(string memory _gracefullness) public view returns {
        return _gracefullness;
    }

    function getPrice(uint256 _price) public view returns {
        return _price;
    }

    function getAge(uint256 _age) public view returns {
        return _age; 
    }
}