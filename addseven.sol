//SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

import {Hello} from "./Hello.sol";

contract AddSeven is Hello {
    function dispFavNum(string memory nigName) public override view returns (uint256) {
        return nigFavNum[nigName] + 10 ;
    }
}
