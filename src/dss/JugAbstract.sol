pragma solidity ^0.5.12;

// https://github.com/makerdao/dss/blob/master/src/jug.sol
contract JugAbstract {
    // mapping (address => uint) public wards;
    function wards(address) public view returns (uint256);
    function rely(address) external;
    function deny(address) external;
    struct Ilk {
        uint256 duty;
        uint256  rho;
    }
    // mapping (bytes32 => Ilk) public ilks;
    function ilks(bytes32) public view returns (uint256, uint256);
    // VatLike public vat;
    function vat() public view returns (address);
    // address public vow;
    function vow() public view returns (address);
    // uint256 public base;
    function base() public view returns (address);
    //uint256 constant ONE = 10 ** 27;
    function ONE() public view returns (uint256);
    function init(bytes32) external;
    function file(bytes32, bytes32, uint256) external;
    function file(bytes32, uint256) external;
    function file(bytes32, address) external;
    function drip(bytes32) external returns (uint256);
}
