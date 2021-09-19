pragma solidity ^0.5.0;

contract MyContract {
  string public value = "myValue";
  bool public myBool = true;
  uint public myInt = 1;
  uint256 public peopleCount;
  mapping(uint => Person) public people;
  
  enum State { Waiting, Ready, Active }
  State public state;
  
  struct Person {
      uint _id;
      string _firstName;
      string _lastName;
  }
  
  constructor() public {
      state = State.Waiting;
  }
  
  function addPerson(string memory _firstName, string memory _lastName) public {
      peopleCount++;
      people[peopleCount] = Person(peopleCount, _firstName, _lastName);
  }
  
  function activate() public {
      state = State.Active;
  }
  
  function isActive() public view returns(bool) {
      return state == State.Active;
  }

  function set (string memory _value) public {
    value = _value;
  }
}