//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract SendEther {
    constructor() payable {}
    
    receive() external payable {}

    function sendViatransfer(address payable _to) external payable {
        _to.transfer(1);
    }

    function sendViaSend(address payable _to) external payable {
        bool sent = _to.send(1);
        require(sent, "tx failed");
    }

    function sendViaCall(address payable _to) external payable {
        (bool success, ) = _to.call{value: 1}("");
        require(success, "tx failed");
    }

}

contract EthReceiver {
    event Log(uint amount, uint gas);

    receive() external payable {
        emit Log(msg.value, gasleft());
    }
}
