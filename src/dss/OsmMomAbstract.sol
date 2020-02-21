pragma solidity ^0.5.12;


// https://github.com/makerdao/osm-mom
contract OsmMomAbstract {
    // address public owner;
    function owner() public view returns (address);
    // address public authority;
    function authority() public view returns (address);
    // mapping (bytes32 => address) public osms;
    function osms(bytes32) public view returns (address);
    function setOsm(bytes32, address) public;
    function setOwner(address) public;
    function setAuthority(address) public;
    function stop(bytes32) public;
}
