pragma solidity ^0.5.7;

contract Will {
  address owner;
  uint fortune;
  bool deceased;

  constructor() payable public {
    owner = msg.sender;
    fortune = msg.value;
    deceased = false;
  }

  modifier onlyOwner {
    require(msg.sender == owner);
    _;
  }

  modifier onlyIfDeceased {
    require(deaseased == true);
    _;
  }

  address payable[] familyWallets

}