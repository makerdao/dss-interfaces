pragma solidity ^0.5.12;

// https://github.com/makerdao/dss/blob/master/src/join.sol
contract ETHJoinAbstract {
    function wards(address) public view returns (uint256);
    function rely(address usr) external;
    function deny(address usr) external;
    function vat() public view returns (address);
    function ilk() public view returns (bytes32);
    function live() public view returns (uint256);
    function cage() external;
    function join(address) external payable;
    function exit(address, uint256) external;
}
