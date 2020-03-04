pragma solidity ^0.5.12;

// https://github.com/makerdao/dss-deploy/blob/master/src/join.sol
contract AuthGemJoinAbstract {
    function vat() public view returns (address);
    function ilk() public view returns (bytes32);
    function gem() public view returns (address);
    function dec() public view returns (uint256);
    function live() public view returns (uint256);
    function wards(address) public view returns (uint256);
    function rely(address) public;
    function deny(address) public;
    function cage() external;
    function join(address, uint256) public;
    function exit(address, uint256) public;
}
