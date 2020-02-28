pragma solidity ^0.5.12;

// https://github.com/makerdao/osm
contract OsmAbstract {
    function wards(address) public view returns (uint256);
    function rely(address) external;
    function deny(address) external;
    function stopped() public view returns (uint256);
    function src() public view returns (address);
    function hop() public view returns (uint16);
    function zzz() public view returns (uint64);
    function cur() public view returns (uint128, uint128);
    function nxt() public view returns (uint128, uint128);
    function bud(address) public view returns (uint256);
    function stop() external;
    function start() external;
    function change(address) external;
    function step(uint16) external;
    function void() external;
    function pass() public view returns (bool);
    function poke() external;
    function peek() external view returns (bytes32, bool);
    function peep() external view returns (bytes32, bool);
    function read() external view returns (bytes32);
    function kiss(address) external;
    function diss(address) external;
    function kiss(address[] calldata) external;
    function diss(address[] calldata) external;
}
