pragma solidity ^0.5.12;

import { PauseProxyAbstract } from "./PauseProxyAbstract.sol";
import { DSAuthorityAbstract } from "./AuthorityAbstract.sol";

// https://github.com/dapphub/ds-pause
contract PauseAbstract {
    function setOwner(address) public;
    function setAuthority(DSAuthorityAbstract) public;
    function setDelay(uint256) public;
    // mapping (bytes32 => bool) public plans;
    function plans(bytes32) public returns (bool);
    // DSProxyAbstract public proxy;
    function proxy() public returns (PauseProxyAbstract);
    // uint256 public delay;
    function delay() public returns (uint256);
    function plot(address, bytes32, bytes memory, uint256) public;
    function drop(address, bytes32, bytes memory, uint256) public;
    function exec(address, bytes32, bytes memory, uint256) public returns (bytes memory);
}
