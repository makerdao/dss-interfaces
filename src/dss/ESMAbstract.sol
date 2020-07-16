pragma solidity >=0.5.12;

// https://github.com/makerdao/esm/blob/master/src/ESM.sol
interface ESMAbstract {
    function gem() external view returns (address);
    function end() external view returns (address);
    function pit() external view returns (address);
    function min() external view returns (uint256);
    function fired() external view returns (uint256);
    function sum(address) external view returns (address);
    function Sum() external view returns (uint256);
    function fire() external;
    function join(uint256) external;
}
