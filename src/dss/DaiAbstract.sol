pragma solidity ^0.5.12;

// https://github.com/makerdao/dss/blob/master/src/dai.sol
contract DaiAbstract {
    mapping (address => uint) public wards;
    function rely(address guy) external;
    function deny(address guy) external;
    string  public constant name;
    string  public constant symbol;
    string  public constant version;
    uint8   public constant decimals;
    uint256 public totalSupply;
    mapping (address => uint256) public balanceOf;
    mapping (address => mapping (address => uint256)) public allowance;
    mapping (address => uint256) public nonces;
    event Approval(address, address, uint256);
    event Transfer(address, address, uint256);
    bytes32 public DOMAIN_SEPARATOR;
    bytes32 public constant PERMIT_TYPEHASH;
    function transfer(address, uint256) external;
    function transferFrom(address, address, uint256) public returns (bool);
    function mint(address, uint256) external;
    function burn(address, uint256) external;
    function approve(address, uint256) external returns (bool);
    function push(address, uint256) external;
    function pull(address, uint256) external;
    function move(address, address, uint256) external;
    function permit(address, address, uint256, uint256, bool, uint8, bytes32, bytes32) external;
}