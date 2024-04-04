// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MuContract {    
uint[] public uintArray = [1, 2, 3 ];
string[] public strArray = ["dog", "bob", "upg"];
string[] public values;
uint256[][] public array2D = [[1, 2, 3], [14, 2, 3]];

function addValue(string memory  _value) public {
    values.push(_value);
}

function valueCount() public view returns(uint) {
    return values.length;
}
}