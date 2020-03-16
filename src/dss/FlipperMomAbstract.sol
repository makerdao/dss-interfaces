pragma solidity ^0.5.12;

// https://github.com/makerdao/flipper-mom/blob/master/src/FlipperMom.sol
contract FlipperMomAbstract {
    function owner() public returns (address);
    function setOwner(address) external;
    function authority() public returns (address);
    function setAuthority(address) external;
    function cat() public returns (address);
    function rely(address, address) external;
    function deny(address, address) external;
}
