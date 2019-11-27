pragma solidity ^0.5.12;

import { VatAbstract } from "./VatAbstract.sol";

// https://github.com/makerdao/dss/blob/master/src/pot.sol
contract PotAbstract {
    mapping (address => uint256) public wards;
    function rely(address guy) external;
    function deny(address guy) external;
    mapping (address => uint256) public pie;  // user Savings Dai
    uint256 public Pie;  // total Savings Dai
    uint256 public dsr;  // the Dai Savings Rate
    uint256 public chi;  // the Rate Accumulator
    VatAbstract public vat;  // CDP engine
    address public vow;  // debt engine
    uint256 public rho;  // time of last drip
    uint256 public live;  // Access Flag
    function file(bytes32, uint256) external;
    function file(bytes32, address) external;
    function cage() external;
    function drip() external returns (uint256);
    function join(uint256) external;
    function exit(uint256) external;
}