pragma solidity ^0.5.12;

import { DSPauseProxyAbstract } from "./DSPauseProxyAbstract.sol";
import { DSAuthorityAbstract } from "./DSAuthorityAbstract.sol";

// https://github.com/dapphub/ds-pause
contract DSPauseAbstract {
    function setOwner(address) public;
    function setAuthority(DSAuthorityAbstract) public;
    function setDelay(uint256) public;
    // mapping (bytes32 => bool) public plans;
    function plans(bytes32) public view returns (bool);
    // DSProxyAbstract public proxy;
    function proxy() public view returns (DSPauseProxyAbstract);
    // uint256 public delay;
    function delay() public view returns (uint256);
    function plot(address, bytes32, bytes memory, uint256) public;
    function drop(address, bytes32, bytes memory, uint256) public;
    function exec(address, bytes32, bytes memory, uint256) public returns (bytes memory);
}
