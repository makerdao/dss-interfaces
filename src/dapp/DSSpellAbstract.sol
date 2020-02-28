pragma solidity ^0.5.12;

// https://github.com/dapphub/ds-spell
contract DSSpellAbstract {
    function whom() public view returns (address);
    function mana() public view returns (uint256);
    function data() public view returns (bytes memory);
    function done() public view returns (bool);
    function cast() public;
}
