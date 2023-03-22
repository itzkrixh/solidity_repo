//SPDX-License-Identifier: MIT

pragma solidity >=0.7.0; // declaring the version of solidity

contract SimpleStorage{     // its the main body kinda like class
    //types in solidity bool,uint,int,address,string,bytes,enum,struct,arrays
    // bool hasFavouriteNumber;
    // string favoriteNumberInText;
    // address owner;
    // bytes32 favouriteBytes= "Hello World";
    uint256 number; // declaring a variable

    struct People{
        uint256 favouriteNumber;
        string name;
    }

    mapping (string=>uint256) public nameToNumber; // declaring a mapping

    People[] public people; // declaring an array

    function store(uint256 _number) public { //function to store the number
        number=_number;
    }

    function retrieve() public view returns(uint256){ //function to retrieve the numberf
        return number; // returning the number
    }

    function addPerson ( uint256 _favouriteNumber,string memory _name) public{
        // people.push(People({favouriteNumber:_favouriteNumber,name:_name}));
        people.push(People(_favouriteNumber,_name)); // adding a person to the array
        nameToNumber[_name]=_favouriteNumber; // adding a person to the mapping
    }


}   