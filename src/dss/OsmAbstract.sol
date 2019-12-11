pragma solidity ^0.5.12;

// https://github.com/makerdao/osm
contract OsmAbstract {
    // mapping (address => uint) public wards;
    function wards(address) public view returns (uint256);
    function rely(address) external;
    function deny(address) external;
    // uint256 public stopped;
    function stopped() public view returns (uint256);
    // address public src;
    function src() public view returns (address);
    // uint16  constant ONE_HOUR = uint16(3600);
    function ONE_HOUR() public view returns (uint16);
    // uint16  public hop = ONE_HOUR;
    function hop() public view returns (uint16);
    // uint64  public zzz;
    function zzz() public view returns (uint64);
    struct Feed {
        uint128 val;
        uint128 has;
    }
    // Feed cur;
    function cur() public view returns (uint128, uint128);
    // Feed nxt;
    function nxt() public view returns (uint128, uint128);
    // mapping (address => uint256) public bud;
    function bud(address) public view returns (uint256);
    event LogValue(bytes32);
    function stop() external;
    function start() external;
    function change(address) external;
    function step(uint16) external;
    function void() external;
    function pass() public view returns (bool);
    function poke() external;
    function peek() external view returns (bytes32, bool);
    function peep() external view returns (bytes32, bool);
    function read() external view returns (bytes32);
    function kiss(address) external;
    function diss(address) external;
    function kiss(address[] calldata) external;
    function diss(address[] calldata) external;
}
