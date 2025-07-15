// SPDX-License-Identifier: MIT

pragma solidity ^0.8.28;

import {AggregatorV3Interface} from "@chainlink/contracts/src/v0.8/shared/interfaces/AggregatorV3Interface.sol";

library getPriceConversion{

    AggregatorV3Interface internal DataFeed;
    
    constructor() {
        DataFeed = AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306);
    }

    function getPrice() internal view returns(uint256){
        (/*d*/,int answer,/*h*/,/*h*/,/*h*/) = DataFeed.latestRoundData();

        return(uint256(answer));
    }

    function getConversionRate(uint256 _ammount) internal view returns(uint256){
        uint256 ethPrice = getPrice();
        uint256 ethInUSD = (ethPrice * _ammount) / 1e18;

        return ethInUSD;
    }

    function getVersion() internal view returns(uint256){
        return AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306).version();
    }
}