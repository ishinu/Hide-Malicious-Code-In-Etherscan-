// SPDX-License-Identifier:MIT
pragma solidity ^0.8.9;

import "./Donation.sol";

contract Gateway {
    Donation public donation;

    constructor(address _donationAddress){
        donation = Donation(_donationAddress);
    }

    function sendValue() public payable{
        donation.receiveDonation{value:msg.value}();
    }
}
