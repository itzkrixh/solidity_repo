//SPDX-License-Identifier:Unlicense

pragma solidity ^0.7.0;

contract FirstContract {
    uint256 number;
    string name;
    mapping (string=>uint256) public stringtonumber;

    function setNumber(uint256 _number) public {
        number=_number;
    }

    function getNumber() view public returns(uint256){
        return number;
    }

    function setName(string memory _name,uint256 _age) public {
        name=_name;
        stringtonumber[_name]=_age;
    }

    function getName() view public returns(string memory){
        return name;
    }


}
