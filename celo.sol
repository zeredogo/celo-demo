// SPDX - License-Identifier: MIT
pragma solidity ^0.8.3;

contract UberEatDiscountNFT is ERC1155, ownable {
    string public tokenURI;

    constructor(string memory _tokenURI ) ERC1155("") {
        tokenURI = _tokenURI;
    }

    function mint(address account, uint256 amount) public payable {
        require(msg.value == 0.001 ether, "You need to pay 0.001 ether");
        require(msg.sender.balance >= msg.value, "you don't have enough ether");
    }
}