// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity >=0.5.12;

// https://github.com/bellwoodstudios/dss-lerp/blob/master/src/Lerp.sol
interface LerpAbstract {
    function wards(address) external view returns (uint256);
    function rely(address) external;
    function deny(address) external;
    function target() external view returns (address);
    function what() external view returns (bytes32);
    function start() external view returns (uint256);
    function end() external view returns (uint256);
    function duration() external view returns (uint256);
    function init() external;
    function tick() external;
}
