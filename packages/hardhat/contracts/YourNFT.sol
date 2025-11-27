// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract YourNFT is ERC721, Ownable {
    uint256 private _nextTokenId;

    constructor() ERC721("MyNFT", "MNFT") Ownable(msg.sender) {}

    function safeMint(address to) public payable {
        require(msg.value >= 0.001 ether, "Not enough ETH");
        uint256 tokenId = _nextTokenId++;
        _safeMint(to, tokenId);
    }
}
