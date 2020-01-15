pragma solidity ^0.5.12;

// https://github.com/dapphub/ds-pause
contract DSPauseAbstract {
    function setOwner(address) public;
    // setAuthority address should conform to DSAuthorityAbstract
    function setAuthority(address) public;
    function setDelay(uint256) public;
    // mapping (bytes32 => bool) public plans;
    function plans(bytes32) public view returns (bool);
    // DSPauseProxyAbstract public proxy;
    function proxy() public view returns (address);
    // uint256 public delay;
    function delay() public view returns (uint256);
    function plot(address, bytes32, bytes memory, uint256) public;
    function drop(address, bytes32, bytes memory, uint256) public;
    function exec(address, bytes32, bytes memory, uint256) public returns (bytes memory);
}
