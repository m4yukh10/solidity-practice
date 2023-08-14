// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract error {
    function required(uint _i) public pure returns(uint) {
        require (_i <= 10, "i is greater than 10");
        return _i;
    }
    function reverted(uint _j) public pure {
        if (_j %2 == 0) {
            revert ("_j is divisible by 2");
        }
        else {
            revert ("hello");
        }    
    }
    uint public x = 123;
    function assertive() public view{
        assert(x == 123);
    }
    error Myerror(address caller, uint i);      // custom error
    function testCustomError(uint _i) public pure {
        if (_i > 10){
            revert Myerror(msg.sender, _i);
        }
    }

}
