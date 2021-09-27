// SPDX-License-Identifier: MIT
pragma solidity ^0.7.0;
pragma experimental ABIEncoderV2;
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v3.4/contracts/token/ERC721/ERC721.sol";

contract NFT is ERC721 {
    uint256 public tokenCounter;

    constructor() ERC721("Factory NFT", "NFT") {
        tokenCounter=0;
    }

    function mint() external {
        uint256 newItemId = tokenCounter;
        _safeMint(msg.sender, newItemId, 'NFT URI');
        tokenCounter = tokenCounter + 1;
    }
}
