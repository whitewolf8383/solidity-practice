pragma solidity >=0.7.0 <0.9.0; // Bring in solidity

contract simpleStorage {
  uint storedData;
  
  function set(uint data) public{
    storedData = data;
  }

  function get() public view returns(uint) {
    return storedData;
  }

}