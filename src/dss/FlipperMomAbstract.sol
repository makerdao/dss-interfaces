pragma solidity >=0.5.12;

// https://github.com/makerdao/flipper-mom/blob/master/src/FlipperMom.sol
interface FlipperMomAbstract {
    function owner() external returns (address);
    function setOwner(address) external;
    function authority() external returns (address);
    function setAuthority(address) external;
    function cat() external returns (address);
    function rely(address) external;
    function deny(address) external;
}
