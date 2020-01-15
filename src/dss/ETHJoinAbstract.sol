pragma solidity ^0.5.12;

// https://github.com/makerdao/dss/blob/master/src/join.sol
contract ETHJoinAbstract {
    // mapping (address => uint) public wards;
    function wards(address) public view returns (uint256);
    function rely(address usr) external;
    function deny(address usr) external;
    // VatAbstract public vat;
    function vat() public view returns (address);
    // bytes32 public ilk;
    function ilk() public view returns (bytes32);
    // uint256 public live; // Access Flag
    function live() public view returns (uint256);
    function cage() external;
    function join(address) external payable;
    function exit(address, uint256) external;
}
