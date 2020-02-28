pragma solidity ^0.5.12;

// https://github.com/makerdao/dss/blob/master/src/cat.sol
contract CatAbstract {
    function wards(address) public view returns (uint256);
    function rely(address) external;
    function deny(address) external;
    function ilks(bytes32) public view returns (address, uint256, uint256);
    function live() public view returns (uint256);
    function vat() public view returns (address);
    function vow() public view returns (address);
    function file(bytes32, address) external;
    function file(bytes32, bytes32, uint256) external;
    function file(bytes32, bytes32, address) external;
    function bite(bytes32, address) external returns (uint256);
    function cage() external;
}
