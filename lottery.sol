//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Lottery {
    address public manager;
    address payable[] public participants;

    constructor (){
        manager = msg.sender;

    }
    receive() external payable {
        require (msg.value == 2 ether);
        participants.push(payable(msg.sender));
    }
    function getBalance() public view returns(uint){
        require(msg.sender == manager);
        return address(this).balance;
    }
    function Random() public view returns (uint){
        return uint(keccak256(abi.encodePacked(block.difficulty, block.timestamp, participants.length)));
    }
    function selectWinner() public view returns(address){
        require(msg.sender == manager);
        require(participants.length >= 3);
        uint r = Random();
        address payable winner;
        uint index = r % participants.length;
        winner = participants[index];
        return winner;
        winner.transfer(getBalance());
        participants = new address payable[](0); // resets the array and sets the length = 0

    }

}
