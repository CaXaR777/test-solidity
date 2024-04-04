// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MuContract {    
    int256 myInt = 1;
    uint public myUint  = 1;
    uint256 public myUint256 = 1;
    uint8 public myUint8 = 1;

    string public myString = 'hi there';
    bytes32 public myBytes32 = "hey bob";

    address public myAdress = 0xcD6a42782d230D7c13A74ddec5dD140e55499Df9;

    struct MyStruct {
        uint256 myUint256;
        string myString;
    }

    MyStruct public myStruct = MyStruct(1, 'hello world');


    function getValue() public pure returns(uint)  {
        uint value = 1;

        return value;

    }
}