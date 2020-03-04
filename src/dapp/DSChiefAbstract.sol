pragma solidity ^0.5.12;

// https://github.com/dapphub/ds-chief
contract DSChiefApprovals {
    function slates(bytes32) public view returns (address[] memory);
    function votes(address) public view returns (bytes32);
    function approvals(address) public view returns (uint256);
    function deposits(address) public view returns (address);
    function GOV() public view returns (address);
    function IOU() public view returns (address);
    function hat() public view returns (address);
    function MAX_YAYS() public view returns (uint256);
    function lock(uint256) public;
    function free(uint256) public;
    function etch(address[] memory) public returns (bytes32);
    function vote(address[] memory) public returns (bytes32);
    function vote(bytes32) public;
    function lift(address) public;
}

contract DSChiefAbstract is DSChiefApprovals {
    function setOwner(address) public;
    function setAuthority(address) public;
    function isUserRoot(address) public view returns (bool);
    function setRootUser(address, bool) public;
    function _root_users(address) public view returns (bool);
    function _user_roles(address) public view returns (bytes32);
    function _capability_roles(address, bytes4) public view returns (bytes32);
    function _public_capabilities(address, bytes4) public view returns (bool);
    function getUserRoles(address) public view returns (bytes32);
    function getCapabilityRoles(address, bytes4) public view returns (bytes32);
    function isCapabilityPublic(address, bytes4) public view returns (bool);
    function hasUserRole(address, uint8) public view returns (bool);
    function canCall(address, address, bytes4) public view returns (bool);
    function setUserRole(address, uint8, bool) public;
    function setPublicCapability(address, bytes4, bool) public;
    function setRoleCapability(uint8, address, bytes4, bool) public;
}

contract DSChiefFabAbstract {
    function newChief(address, uint256) public returns (address);
}
