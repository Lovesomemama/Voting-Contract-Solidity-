// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Voting {
    mapping(address => uint) public votes;
    function vote(uint amount) public {
        votes[msg.sender] += amount;
    }
    function getVotes(address addr) public view returns (uint) {
        return votes[addr];
    }
}
