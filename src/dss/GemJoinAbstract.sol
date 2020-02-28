pragma solidity ^0.5.12;

// https://github.com/makerdao/dss/blob/master/src/join.sol
contract GemJoinAbstract {
    function wards(address) public view returns (uint256);
    function rely(address) external;
    function deny(address) external;
    function vat() public view returns (address);
    function ilk() public view returns (bytes32);
    function gem() public view returns (address);
    function dec() public view returns (uint256);
    function live() public view returns (uint256);
    function cage() external;
    function join(address, uint256) external;
    function exit(address, uint256) external;
}
