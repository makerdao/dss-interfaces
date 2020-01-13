pragma solidity ^0.5.12;

// https://github.com/dapphub/ds-chief
contract DSChiefApprovals {
    // mapping(bytes32=>address[]) public slates;
    function slates(bytes32) public view returns (address[] memory);
    // mapping(address=>bytes32) public votes;
    function votes(address) public view returns (bytes32);
    // mapping(address=>uint256) public approvals;
    function approvals(address) public view returns (uint256);
    // mapping(address=>uint256) public deposits;
    function deposits(address) public view returns (address);
    // DSToken public GOV; // voting token that gets locked up
    // GOV return address will conform to DSTokenAbstract
    function GOV() public view returns (address);
    // DSToken public IOU; // non-voting representation of a token, for e.g. secondary voting mechanisms
    // IOU return address will conform to DSTokenAbstract
    function IOU() public view returns (address);
    // address public hat; // the chieftain's hat
    function hat() public view returns (address);
    // uint256 public MAX_YAYS;
    function MAX_YAYS() public view returns (uint256);
    event Etch(bytes32 indexed);
    function lock(uint256) public;
    function free(uint256) public;
    function etch(address[] memory) public returns (bytes32);
    function vote(address[] memory) public returns (bytes32);
    function vote(bytes32) public;
    function lift(address) public;
}

contract DSChiefAbstract is DSChiefApprovals {
    function setOwner(address) public;
    // setAuthority address param should conform to DSAuthorityAbstract
    function setAuthority(address) public;
    function isUserRoot(address) public view returns (bool);
    function setRootUser(address, bool) public;

    // DS-Roles
        // mapping(address=>bool) _root_users;
    function _root_users(address) public view returns (bool);
    // mapping(address=>bytes32) _user_roles;
    function _user_roles(address) public view returns (bytes32);
    // mapping(address=>mapping(bytes4=>bytes32)) _capability_roles;
    function _capability_roles(address, bytes4) public view returns (bytes32);
    // mapping(address=>mapping(bytes4=>bool)) _public_capabilities;
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
    // newChief address param should conform to DSTokenAbstract
    // newChief return address should conform to DSChiefAbstract
    function newChief(address, uint256) public returns (address);
}
