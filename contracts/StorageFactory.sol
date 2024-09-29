// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;
import {SimpleStorage} from "./SimpleStorage.sol";

contract StorageFactory{

    SimpleStorage[] public listOfSimpleStorages;

    function CreateSimpleStorageContract() public {
        SimpleStorage simpleStorage = new SimpleStorage();
        listOfSimpleStorages.push(simpleStorage);
    }

    function sfStore(uint256 _index, uint256 _newSimpleStorageNumber) public {
        //ABI - Application Binary Interface

        SimpleStorage mySimpleStorage = listOfSimpleStorages[_index];
        mySimpleStorage.store(_newSimpleStorageNumber);
    }

    function sfGet(uint256 index) public view returns (uint256){
        return listOfSimpleStorages[index].retrieves();
    }
}
