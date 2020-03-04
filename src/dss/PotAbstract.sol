pragma solidity ^0.5.12;

// https://github.com/makerdao/dss/blob/master/src/pot.sol
contract PotAbstract {
    function wards(address) public view returns (uint256);
    function rely(address) external;
    function deny(address) external;
    function pie(address) public view returns (uint256);
    function Pie() public view returns (uint256);
    function dsr() public view returns (uint256);
    function chi() public view returns (uint256);
    function vat() public view returns (address);
    function vow() public view returns (address);
    function rho() public view returns (uint256);
    function live() public view returns (uint256);
    function file(bytes32, uint256) external;
    function file(bytes32, address) external;
    function cage() external;
    function drip() external returns (uint256);
    function join(uint256) external;
    function exit(uint256) external;
}
