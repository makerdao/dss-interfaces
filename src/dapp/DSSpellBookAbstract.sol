pragma solidity ^0.5.12;

import { DSSpellAbstract } from "./DSSpellAbstract.sol";

// https://github.com/dapphub/ds-spell
contract DSSpellBookAbstract {
    function make(address, uint256, bytes memory) public returns (DSSpellAbstract);
}