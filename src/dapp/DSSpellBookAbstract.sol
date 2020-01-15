pragma solidity ^0.5.12;

// https://github.com/dapphub/ds-spell
contract DSSpellBookAbstract {
    // make return address should conform to DSSpellAbstract
    function make(address, uint256, bytes memory) public returns (address);
}
