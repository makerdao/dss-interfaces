pragma solidity ^0.5.12;

// https://github.com/dapphub/ds-value/blob/master/src/value.sol
contract DSValueAbstract {
    // bool public has;
    function has() public view returns (bool);
    // bytes32 public val;
    function val() public view returns (bytes32);
    function peek() public view returns (bytes32, bool);
    function read() public view returns (bytes32);
    function poke(bytes32) public;
    function void() public;
    // DSAuthority  public  authority;
    function authority() public view returns (address);
    // address      public  owner;
    function owner() public view returns (address);
    function setOwner(address) public;
    function setAuthority(address) public;
}
