// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.22;

contract Election {
    uint256 public totalVotes; // by standard 256 bits = 32 bytes. So you can use just uint or uint256

    mapping(uint => uint256) public candidateVoteCount;
    mapping(address => bool) public voters;

    event Vote(address indexed voter);

    constructor() {
        candidateVoteCount[70] = 0;
        candidateVoteCount[71] = 0;
        candidateVoteCount[72] = 0;
    }

    function vote(uint256 _candidateId) public {
        require(!voters[msg.sender], "You have already voted.");
        require(_candidateId == 70 || _candidateId == 71 || _candidateId == 72, "Candidate does not exists!");
        voters[msg.sender] = true;
        candidateVoteCount[_candidateId]++;             
        totalVotes++;
        emit Vote(msg.sender);
    }
}