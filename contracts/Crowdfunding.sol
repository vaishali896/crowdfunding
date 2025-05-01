// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract CarbonCreditTracker {
    mapping(address => uint256) public credits;

    // Issue carbon credits to a company
    function issueCredits(address to, uint256 amount) public {
        credits[to] += amount;
    }

    // Use or burn carbon credits
    function useCredits(uint256 amount) public {
        require(credits[msg.sender] >= amount, "Insufficient credits");
        credits[msg.sender] -= amount;
    }
}
