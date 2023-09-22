//SPDX-License-Identifier-UNLICENSED
pragma solidity ^0.8.7;
contract errorhandling {
    function knowrequire(uint _i) public pure {
        require(_i < 10, "i > 10");
    }
    function knowrevert(uint _j) public pure {
        if (_j >100){
            revert("j is greater than 100");
        }
    }
    uint public x = 100;
    function know_assert() public view{
        assert(x == 100);
    }
    error myError(address caller, uint i, string reason);
    function testing_customError(uint _k) external {
        if (_k%2 == 0){
            revert myError(msg.sender, _k, "given number is divisible by 2");
        }
    }
}
