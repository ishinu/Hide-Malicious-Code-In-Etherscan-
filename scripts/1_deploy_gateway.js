const { ethers } = require("hardhat");

async function main(){
    console.log("Deploying Attack contract...");
    const Attack = await ethers.getContractFactory("Attack");
    const attack = await Attack.deploy();
    await attack.deployed();
    console.log("Attack contract deployed at : ",attack.address);

    console.log("Deploying Gateway contract...");
    const Gateway = await ethers.getContractFactory("Gateway");
    const gateway = await Gateway.deploy(attack.address);
    await gateway.deployed();
    console.log("Gateway contract deployed at : ",gateway.address);
}

main();