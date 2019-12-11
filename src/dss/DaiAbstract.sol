pragma solidity ^0.5.12;

// https://github.com/makerdao/dss/blob/master/src/dai.sol
contract DaiAbstract {
    // mapping (address => uint) public wards;
    function wards(address) public view returns (uint256);
    function rely(address) external;
    function deny(address) external;
    // string  public constant name;
    function name() public view returns (string memory);
    // string  public constant symbol;
    function symbol() public view returns (string memory);
    // string  public constant version;
    function version() public view returns (string memory);
    // uint8   public constant decimals;
    function decimals() public view returns (uint8);
    // uint256 public totalSupply;
    function totalSupply() public view returns (uint256);
    // mapping (address => uint256) public balanceOf;
    function balanceOf(address) public view returns (uint256);
    // mapping (address => mapping (address => uint256)) public allowance;
    function allowance(address, address) public view returns (uint256);
    // mapping (address => uint256) public nonces;
    function nonces(address) public view returns (uint256);
    event Approval(address, address, uint256);
    event Transfer(address, address, uint256);
    // bytes32 public DOMAIN_SEPARATOR;
    function DOMAIN_SEPARATOR() public view returns (bytes32);
    // bytes32 public constant PERMIT_TYPEHASH;
    function PERMIT_TYPEHASH() public view returns (bytes32);
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