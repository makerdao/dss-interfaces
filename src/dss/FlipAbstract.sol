pragma solidity ^0.5.12;

// https://github.com/makerdao/dss/blob/master/src/flip.sol
contract FlipAbstract {
    function wards(address) public view returns (uint256);
    function rely(address usr) external;
    function deny(address usr) external;
    function bids(uint256) public view returns (uint256, uint256, address, uint48, uint48, address, address, uint256);
    function vat() public view returns (address);
    function ilk() public view returns (bytes32);
    function beg() public view returns (uint256);
    function ttl() public view returns (uint48);
    function tau() public view returns (uint48);
    function kicks() public view returns (uint256);
    function file(bytes32, uint256) external;
    function kick(address, address, uint256, uint256, uint256) public returns (uint256);
    function tick(uint256) external;
    function tend(uint256, uint256, uint256) external;
    function dent(uint256, uint256, uint256) external;
    function deal(uint256) external;
    function yank(uint256) external;
}
