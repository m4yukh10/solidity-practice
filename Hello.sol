// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract Hello {
    struct nigga {
        uint256 bodycount;
        string name;
    }

    mapping(string => uint256) public nigFavNum;

    nigga[] public nigs;

    function addNig(uint256 bc, string memory nigName, uint256 fav) public {
        nigs.push(nigga({bodycount:bc, name:nigName}));
        nigFavNum[nigName] = fav;
    }

    function dispFavNum(string memory nigName) public view returns (uint256) {
        return nigFavNum[nigName];
    }
    
    
}
