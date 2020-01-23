pragma solidity ^0.5.12;

// https://github.com/makerdao/dss-spellbook
contract DSRuneAbstract {
    function pause()    public view returns (address);
    function usr()      public view returns (address);
    function tag()      public view returns (bytes32);
    function sig()      public view returns (bytes32);
    function eta()      public view returns (uint256);
    function schedule() public;
    function done()     public view returns (bool);
    function cast()     public;
}
