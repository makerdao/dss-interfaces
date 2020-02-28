pragma solidity ^0.5.12;

// https://github.com/dapphub/ds-roles
contract DSRolesAbstract {
    function _root_users(address) public view returns (bool);
    function _user_roles(address) public view returns (bytes32);
    function _capability_roles(address, bytes4) public view returns (bytes32);
    function _public_capabilities(address, bytes4) public view returns (bool);
    function getUserRoles(address) public view returns (bytes32);
    function getCapabilityRoles(address, bytes4) public view returns (bytes32);
    function isUserRoot(address) public view returns (bool);
    function isCapabilityPublic(address, bytes4) public view returns (bool);
    function hasUserRole(address, uint8) public view returns (bool);
    function canCall(address, address, bytes4) public view returns (bool);
    function setRootUser(address, bool) public;
    function setUserRole(address, uint8, bool) public;
    function setPublicCapability(address, bytes4, bool) public;
    function setRoleCapability(uint8, address, bytes4, bool) public;
    function authority() public view returns (address);
    function owner() public view returns (address);
    function setOwner(address) public;
    function setAuthority(address) public;
}
