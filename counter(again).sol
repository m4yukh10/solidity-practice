//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Chai{
    uint public x = 0;
    function inc() external {
        x += 1;
    }
    function dec() external {
        x -= 1;
    }
    
}
