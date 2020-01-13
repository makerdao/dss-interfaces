pragma solidity ^0.5.12;

// https://github.com/makerdao/dss-deploy/blob/master/src/join.sol
contract AuthGemJoinAbstract {
    // VatAbstract public vat;
    function vat() public view returns (address);
    // bytes32 public ilk;
    function ilk() public view returns (bytes32);
    // TokenAbstract public gem;
    // gem return address will conform to DSTokenAbstract
    function gem() public view returns (address);
    // uint256 public dec;
    function dec() public view returns (uint256);
    // uint256 public live;  // Access Flag
    function live() public view returns (uint256);
    // mapping (address => uint) public wards;
    function wards(address) public view returns (uint256);
    function rely(address) public;
    function deny(address) public;
    function cage() external;
    function join(address, uint256) public;
    function exit(address, uint256) public;
}
