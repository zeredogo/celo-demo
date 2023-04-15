// SPDX - License-Identifier: MIT
pragma solidity ^0.8.3;

contract UberEatDiscountNFT is ERC1155, ownable {
    string public tokenURI;

    constructor(string memory _tokenURI ) ERC1155("") {
        tokenURI = _tokenURI;
    }
}