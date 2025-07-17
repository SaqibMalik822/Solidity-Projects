// SPDX-License-identifier: MIT

pragma solidity ^0.8.28;

contract EventDrivenArchitecture{
    event transferInitiated(address Indexed from, address indexed to, uint256 value);
    event transferFinilized(address Indexed from, address indexed to, uint256 value);

    function 


}


contract  EventSubscription{

    mapping (address => bool) public isSubscribed;
    address[] public subscribersList;

    function subscribe() public{
        require(!isSubscribed[msg.sender], "Already subscribed");
        isSubscribed[msg.sender] = true;
        subscribersList.push(msg.sender);
    }

    function unsubscribe() public{
        require(isSubscribed[msg.sender], "you are not subscribed");
        isSubscribed[msg.sender] == false;
        for(uint256 i = 0; i < subscribersList.length; i++){
            if(subscribersList[i] = msg.sender){
                subscribersList[i] = subscribersList[subscribersList.length - 1];
                subsubscribersList.pop;
                break;
            }
        }
    }

}