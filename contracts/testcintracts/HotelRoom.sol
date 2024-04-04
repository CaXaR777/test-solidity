// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract HotelRoom {

    enum Statuses {
        Free,
         Registered
         }
    Statuses public currentStatus;

    event Occupy(address _occupant, uint _value);

    address payable public owner;

    constructor(){
        owner = payable (msg.sender);
        currentStatus = Statuses.Free;
    }
    modifier onlyFree {
     require(currentStatus == Statuses.Free, "Curently taken");
     _;
    }
      modifier costs(uint _amount) {
     require(msg.value >= _amount);
     _;
    }

    function book() public payable onlyFree costs(2 ether)  {

       
        currentStatus = Statuses.Registered;
        // owner.transfer(msg.value);
        (bool sent, bytes memory data) = owner.call{value: msg.value}('');
        require(sent);
        emit Occupy(msg.sender, msg.value);
    }
}