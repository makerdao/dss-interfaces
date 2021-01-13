// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity >=0.5.12;

// https://github.com/makerdao/dss-exec-lib/blob/master/src/DssExecFactory.sol
interface DssExecFactoryAbstract {
    function newExec(string memory,uint256,address) external returns (address);
    function newWeeklyExec(string memory,address) external returns (address);
    function newMonthlyExec(string memory,address) external returns (address);
}
