//SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Migrations {
    address public owner = msg.sender;
    uint public last_completed_migration;

    modifier restricted{
        require(msg.sender == owner,
        "Only the contract's owner can call this function");
        _;
    }

    function setCompleted(uint completed)public restricted(){
        last_completed_migration=completed;
    }
}