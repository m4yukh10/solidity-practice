//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;
contract modify {
    bool public paused;
    uint public count;
    function setPause(bool _paused) external {
        paused = _paused;
    }
    modifier whenNotPaused() {
        require (!paused,"paused");
        _;
    }
    function inc() external whenNotPaused {
         count+=1;    
    }
    function dec() external whenNotPaused {
        count -=1;
    }
    modifier cap(uint _i) {
        require (_i%2 == 0, "not divisible by 2");
        _;
    }
    function increaseby(uint _i) external whenNotPaused cap(_i) {
        count+=_i;
    }
    modifier sandwich () {
        count += 10;
        _;
        count *=  2;
    }
    function foo() external sandwich{
        count +=1;
    }



}
