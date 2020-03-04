pragma solidity ^0.5.12;

// https://github.com/dapphub/ds-auth
contract DSAuthorityAbstract {
    function canCall(address, address, bytes4) public view returns (bool);
}

contract DSAuthAbstract {
    function authority() public view returns (address);
    function owner() public view returns (address);
    function setOwner(address) public;
    function setAuthority(address) public;
}
