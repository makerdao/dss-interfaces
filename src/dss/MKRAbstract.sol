pragma solidity ^0.5.12;

import { DSTokenAbstract } from "../dapp/DSTokenAbstract.sol";

// MKR Token adheres to the DS-Token contract interface
//  Consider using DSTokenAbstract directly when abstracting MKR
contract MKRAbstract is DSTokenAbstract {}
