pragma solidity ^0.5.12;

import { TokenAbstract } from "./TokenAbstract.sol";
import { RolesAbstract } from "./RolesAbstract.sol";
import { DSAuthorityAbstract } from "./AuthorityAbstract.sol";

// https://github.com/dapphub/ds-chief
contract DSChiefApprovals {
    // mapping(bytes32=>address[]) public slates;
    function slates(bytes32) public returns (address[] memory);
    // mapping(address=>bytes32) public votes;
    function votes(address) public returns (bytes32);
    // mapping(address=>uint256) public approvals;
    function approvals(address) public returns (uint256);
    // mapping(address=>uint256) public deposits;
    function deposits(address) public returns (address);
    // DSToken public GOV; // voting token that gets locked up
    function GOV() public returns (TokenAbstract);
    // DSToken public IOU; // non-voting representation of a token, for e.g. secondary voting mechanisms
    function IOU() public returns (TokenAbstract);
    // address public hat; // the chieftain's hat
    function hat() public returns (address);
    // uint256 public MAX_YAYS;
    function MAX_YAYS() public returns (uint256);
    event Etch(bytes32 indexed);
    function lock(uint256) public;
    function free(uint256) public;
    function etch(address[] memory) public returns (bytes32);
    function vote(address[] memory) public returns (bytes32);
    function vote(bytes32) public;
    function lift(address) public;
}

contract DSChiefAbstract is RolesAbstract, DSChiefApprovals {
    function setOwner(address) public;
    function setAuthority(DSAuthorityAbstract) public;
    function isUserRoot(address) public view returns (bool);
    function setRootUser(address, bool) public;
}

contract DSChiefFabAbstract {
    function newChief(TokenAbstract, uint256) public returns (DSChiefAbstract);
}