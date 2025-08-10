//SPDX-License-Idetifier: MIT
pragma solidity ^0.8.7;
import {SimpleStorage} from "./SimpleStorage.sol";

contract AddFiveStorage is SimpleStorage {
    function sayHello() public returns(string memory) {
        return "hello";
    }
    function store(uint256 _newNumber) public override{
        myFavoriteNumber = _newNumber + 5;
    }
}
