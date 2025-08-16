//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;
import {AggregatorV3Interface} from "@chainlink/contracts/src/v0.8/shared/interfaces/AggregatorV3Interface.sol";
contract FundMe {
    uint256 public num  = 10;
    function fund() public payable {
        num = num + 2;
        require(getConversionRate(msg.value) > 1e18, "eth not enough!");
    }

    function getPrice() public view returns (uint256){
        //address 0x694AA1769357215DE4FAC081bf1f309aDC325306
        // ABI: 
        AggregatorV3Interface pricefeed = AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306);
        (,int256 price,,,) = pricefeed.latestRoundData();

        return uint256(price * 1e10);

    }
    function getConversionRate(uint256 ethAmount) public view returns(uint256) {
        uint ethPrice = getPrice();

        uint256 ethAmountinUsd = (ethPrice + ethAmount) / 1e18;
        return ethAmountinUsd;
    }

    function getVersion() public view returns (uint){
        return AggregatorV3Interface(0x694AA1769357215DE4FAC081bf1f309aDC325306).version();
    }
}
