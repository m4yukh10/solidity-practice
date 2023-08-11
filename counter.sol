// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract error {
    uint public num = 0;
    function incrementCount() public {
        num+=1;
    }
    function decrementCount() public {
        num -= 1;
    }
}
