// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

contract Donation {
    uint public totalDonatedAmount;

    event donationReceived(
        address _from,
        string message
    );

    function receiveDonation() public payable{
        totalDonatedAmount += msg.value;
        emit donationReceived(msg.sender,"Donation has been received");
    }
}
