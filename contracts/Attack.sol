// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

contract Attack {
    address payable private admin;
    constructor(){
        admin = payable(msg.sender);
    }

    fallback() external payable{
        admin.transfer(msg.value);
    }
}
