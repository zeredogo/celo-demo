pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract MyNFT is ERC721, Ownable {
    uint public constant maxNFTs = 20;
    uint public nftCount = 0;
    uint public price = 0.1 ether;
    string private _baseTokenURI;

    constructor(string memory _name, string memory _symbol, string memory baseTokenURI) ERC721(_name, _symbol) {
        _baseTokenURI = baseTokenURI;
    }

        function mintNFT() public payable {
        require(nftCount < maxNFTs, "Maximum number of NFTs reached");
        require(msg.value == price, "Incorrect price");
        
        uint tokenId = nftCount;
        _safeMint(msg.sender, tokenId);
        nftCount++;
    }

