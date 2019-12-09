pragma solidity ^0.5.12;

// https://github.com/dapphub/ds-spell
contract DSSpellAbstract {
    // address public whom;
    function whom() public returns (address);
    // uint256 public mana;
    function mana() public returns (uint256);
    // bytes   public data;
    function data() public returns (bytes32);
    //bool    public done;
    function done() public returns (bool);
    function cast() public;
}