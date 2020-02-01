pragma solidity ^0.5.12;

import { DSAuthAbstract } from "./DSAuthorityAbstract.sol";

// https://github.com/dapphub/ds-thing
// DS-Thing inherits from DS-Auth, DS-Note, and DS-Math.
//   Only DS-Auth contains public functions.
contract DSThingAbstract is DSAuthAbstract {}
