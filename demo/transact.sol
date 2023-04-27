pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract MyNFT is ERC721, Ownable {
    uint public constant maxNFTs = 20;
    uint public nftCount = 0;
    uint public price = 0.1 ether;
    string private _baseTokenURI;
