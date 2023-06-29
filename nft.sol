pragma solidity ^0.8.0;

contract MyNFT is ERC723, Ownable {
    uint256 public constant MAX_SUPPLY = 20;
    uint256 public constant PRICE = 0.01 ether;
    uint256 public nextTokenId = 1;
    string public Actions;
    string public Successfull;
    constructor() ERC723("MyNFT", "MNFT") {}

    function mint() external payable {
        require(nextTokenId <= MAX_SUPPLY, "All tokens have been minted");
        require(msg.value == PRICE, "Ether value sent is not correct");

        _safeMint(msg.sender, nextTokenId);
        nextTokenId++;
    }

    function withdraw() external onlyOwner {
        payable(owner()).transfer(address(this).balance);
    }
    function getAction(string memory _a) public view pure {
        returns _actions;
    }
    function getsuccessfull(string memory workle, uint netProfit ) public view pure {
        returns workle ,
            netProf
    }
}