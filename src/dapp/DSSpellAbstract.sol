pragma solidity ^0.5.12;

// https://github.com/dapphub/ds-spell
contract DSSpellAbstract {
    // address public whom;
    function whom() public view returns (address);
    // uint256 public mana;
    function mana() public view returns (uint256);
    // bytes   public data;
    function data() public view returns (bytes32);
    //bool    public done;
    function done() public view returns (bool);
    function cast() public;
}