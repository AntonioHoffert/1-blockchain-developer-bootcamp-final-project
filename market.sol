pragma solidity ^0.8.4;

// SPDX-License-Identifier: MIT OR Apache-2.0
import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";

struct Item{
    uint itemId;
    address nftContract;
    uint tokenId;
    address payable seller;
    address payable buyer;
    uint256 price;
}

enum State {
    Unenrolled;
    Enrolled;
    Collateral;
    Liquidate:
    PublicAuction;
}

function enrollToken():
// enroll nft
function bid():
//bid 
function ask():
//ask

modifier verifyEnrolled (State _state) { require (_state == Unenrolled || _state == Liquidate); _;}
modifier verifyColateral (State _state) { require (_state == Enrolled); _;}
modifier verifyLiquidate (State _state) { require (_state == Collateral); _;}
modifier verifyDaoAuction (State _state) { require (_state == DaoAuction); _;}
modifier verifyPublicAuction (State _state) { require (_state == DaoAuction); _;}
modifier verifyLiquidate (State _state) { require (_state == PublicAuction); _;}
}
