//SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;
import "./Hello.sol";

contract NigFactory {
    Hello[] public listOfHelloContracts;
    function createHelloContract() public {
        Hello newHello = new Hello();
        listOfHelloContracts.push(newHello);
    }

    function helloAddNig(uint256 _heloIndex, uint256 _bc, string memory _nigname, uint256 _fav) public {
        Hello hello = listOfHelloContracts[_heloIndex];
        hello.addNig(_bc, _nigname, _fav);
    }

    function helloDispNum(uint256 _heloIndex, string memory name) public view returns(uint256) {
        Hello hello = listOfHelloContracts[_heloIndex];
        return hello.dispFavNum(name);
    }


}
