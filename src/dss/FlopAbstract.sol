pragma solidity ^0.5.12;

// https://github.com/makerdao/dss/blob/master/src/flop.sol
contract FlopAbstract {
    function wards(address) public view returns (uint256);
    function rely(address) external;
    function deny(address) external;
    function bids(uint256) public view returns (uint256, uint256, address, uint48, uint48);
    function vat() public view returns (address);
    function gem() public view returns (address);
    function beg() public view returns (uint256);
    function pad() public view returns (uint256);
    function ttl() public view returns (uint48);
    function tau() public view returns (uint48);
    function kicks() public view returns (uint256);
    function live() public view returns (uint256);
    function vow() public view returns (address);
    function file(bytes32, uint256) external;
    function kick(address, uint256, uint256) external returns (uint256);
    function tick(uint256) external;
    function dent(uint256, uint256, uint256) external;
    function deal(uint256) external;
    function cage() external;
    function yank(uint256) external;
}
