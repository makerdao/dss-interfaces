// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity >=0.5.12;

// https://github.com/makerdao/dss-flash/blob/master/src/flash.sol
interface FlashAbstract {
    function wards(address) external view returns (uint256);
    function rely(address) external;
    function deny(address) external;
    function vat() external returns (address);
    function daiJoin() external returns (address);
    function dai() external returns (address);
    function vow() external returns (address);
    function max() external returns (uint256);
    function toll() external returns (uint256);
    function CALLBACK_SUCCESS() external returns (bytes32);
    function CALLBACK_SUCCESS_VAT_DAI() external returns (bytes32);
    function file(bytes32, uint256) external;
    function maxFlashLoan(address) external view returns (uint256);
    function flashFee(address, uint256) external view returns (uint256);
    function flashLoan(address, address, uint256, bytes calldata) external returns (bool);
    function vatDaiFlashLoan(address, uint256, bytes calldata) external returns (bool);
    function convert() external;
    function accrue() external;
}
