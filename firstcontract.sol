//SPDX-License-Identifier:Unlicense

pragma solidity ^0.7.0;

contract FirstContract {
    uint256 number;
    string name;
    mapping (string=>uint256) public stringtonumber;
    People[] public people;

    struct People {
        uint256 id;
        string name;
        uint256 age;
    }

    function addPeople(string memory _name,uint256 _age) public {
        people.push(People(people.length,_name,_age));
    }

    function setNumber(uint256 _number) public {
        number=_number;
    }

    function getNumber() view public returns(uint256){
        return number;
    }

    function setName(string memory _name,uint256 _age) public {
        name=_name;
        stringtonumber[_name]=_age;
        people.push(People(people.length,_name,_age));
    }

    function getName() view public returns(string memory){
        return name;
    }


}
