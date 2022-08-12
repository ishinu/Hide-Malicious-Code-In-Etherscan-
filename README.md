# Hiding Malicious Code in Etherscan

Here is live implementation of how you attacker can hide their malicious code and trick the donaters.

```
Deploying Attack contract...
Attack contract deployed at :  0x6aEB0fA30B32199232F8e99e5d18a986c40b9185
Deploying Gateway contract...
Gateway contract deployed at :  0xd1B6BbCdbDAC9A82E290470a0C4C5bD90a3fE8e6
```

First Attack contract is deployed which is having a fallback function. 

With that dev deploys `Gateway.sol` contract which tries to make an illusion by showing logic of `Donation.sol` but at the time of deployment, attacker passed `Attack.sol` deployed address as the constructor argument which now will call `Attack.sol`. 

Due to the presense of fallback function in Attack, all the malicious activities can be performed through it.

Intentionally we haven't verified the code at `Attack.sol` address to show you that this way user won't be able to check what's actually at `0x6aEB0fA30B32199232F8e99e5d18a986c40b9185` address. ( You can see by cloning the project in contracts folder ).