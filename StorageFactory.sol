//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;
import {SimpleStorage} from "./SimpleStorage.sol";

contract StorageFactory {
    SimpleStorage[] public listOfSimpleStorageContracts;
    function createSimpleStorageContract() public {
        SimpleStorage newContract = new SimpleStorage();
        listOfSimpleStorageContracts.push(newContract);
    }

    function sfStore (uint256 _simpleStorageIndex, uint256 _newSimpleStorageNumber) public {
        // Address
        //ABI - Binary Interface
        SimpleStorage mySimpleStorage = listOfSimpleStorageContracts[_simpleStorageIndex];
        mySimpleStorage.store(_newSimpleStorageNumber); 
    }

    function sfGet(uint256 _simpleStorageIndex) public view returns (uint256) {
        SimpleStorage mySimpleStorage = listOfSimpleStorageContracts[_simpleStorageIndex];
        return mySimpleStorage.retrieve();
    }
}

