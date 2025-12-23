//SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract Testing {
    event goon(string hello);
    receive() external payable{
        emit goon("received");
    }
    fallback() external payable{
        emit goon("fallback");
    }

    function checkBalance() public view returns (uint){
        return address(this).balance;
    }
}
