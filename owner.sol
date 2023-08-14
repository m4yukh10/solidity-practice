//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;
contract Ownable {
    address public owner;
    uint public riyal_num;
    constructor() {
        owner = msg.sender;
    }
    modifier onlyOwner() {
        require(msg.sender == owner, "not owner");
        _;
    }
    function setOwner(address new_owner) external onlyOwner {
        require(new_owner != address(0), "invalid address..");
        owner = new_owner;
    }
    function owner_can_increment() external onlyOwner{
        riyal_num += 1;
    }
    function anyone_can_increment() external {
        riyal_num += 1;
    }


}
