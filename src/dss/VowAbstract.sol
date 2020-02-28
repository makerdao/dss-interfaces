pragma solidity ^0.5.12;

// https://github.com/makerdao/dss/blob/master/src/vow.sol
contract VowAbstract {
    function wards(address) public view returns (uint256);
    function rely(address usr) external;
    function deny(address usr) external;
    function vat() public view returns (address);
    function flapper() public view returns (address);
    function flopper() public view returns (address);
    function sin(uint256) public view returns (uint256);
    function Sin() public view returns (uint256);
    function Ash() public view returns (uint256);
    function wait() public view returns (uint256);
    function dump() public view returns (uint256);
    function sump() public view returns (uint256);
    function bump() public view returns (uint256);
    function hump() public view returns (uint256);
    function live() public view returns (uint256);
    function file(bytes32, uint256) external;
    function file(bytes32, address) external;
    function fess(uint256) external;
    function flog(uint256) external;
    function heal(uint256) external;
    function kiss(uint256) external;
    function flop() external returns (uint256);
    function flap() external returns (uint256);
    function cage() external;
}
