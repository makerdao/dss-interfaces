pragma solidity ^0.5.12;

// https://github.com/dapphub/ds-thing
contract DSThingAbstract {
    function authority() public view returns (address);
    function owner() public view returns (address);
    function setOwner(address) public;
    function setAuthority(address) public;
}
