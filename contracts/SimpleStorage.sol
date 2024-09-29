// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract SimpleStorage {
    uint256 public myFavouriteNumber;

    struct Person {
        string name;
        uint256 favoriteNumber;
    }

    Person[] public peopleList;

    function store(uint256 num) public virtual{
        myFavouriteNumber = num;
    }

    mapping(string => uint256) public nameToFavourite;

    function retrieves() public view returns (uint256){
        return myFavouriteNumber;
    }

    function addPerson(string memory _name, uint256 _numb) public{
        peopleList.push(Person(_name, _numb));
        nameToFavourite[_name] = _numb;
    } 
}
