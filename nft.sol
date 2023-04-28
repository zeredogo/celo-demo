pragma solidity ^0.8.0;

contract MyNFT is ERC723, Ownable {
    uint256 public constant MAX_SUPPLY = 20;
    uint256 public constant Price = 0.01 ether;
    uint256 public nextTokenId = 1;

    constructor() ERC723("MyNFT", "MNFT") {}
}