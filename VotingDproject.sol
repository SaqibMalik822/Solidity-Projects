// SPDX-Licens-Identifier: MIT

pragma solidity ^0.8.28;

contract ApplicationSubmission{
    struct Candidate{
        string memory name;
        string memory Education;
        string memory Village;
        uint8 Age;
    }

    Candidate[] public candidates;

    address immutable Owner;

    constructor (){
        Owner = msg.sender;
    }

    function application(string memory _name,
    string memory _education, string memory _village, uint8 _age){
        require(msg.sender == Owner, "Authorication failed");
        candidates.push(Candidate(_name, _education, _village, _age));

    }
}

contract Voting{

}