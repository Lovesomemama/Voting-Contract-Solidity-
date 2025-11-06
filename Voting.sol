// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Voting {
    mapping(address => uint) public votes;
// Add specified amount of votes to the sender's address
    function vote(uint amount) public {
        votes[msg.sender] += amount;
    }
// Retrieve vote count for a given address
    function getVotes(address addr) public view returns (uint) {
        return votes[addr];
    }
}
