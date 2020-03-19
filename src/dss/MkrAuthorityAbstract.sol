pragma solidity ^0.5.12;

// https://github.com/makerdao/mkr-authority/blob/master/src/MkrAuthority.sol
contract MkrAuthorityAbstract {
    function root() public returns (address);
    function setRoot(address) public;
    function wards(address) public returns (uint256);
    function rely(address) public;
    function deny(address) public;
    function canCall(address, address, bytes4) public returns (bool);
}
