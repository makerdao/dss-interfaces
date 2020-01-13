pragma solidity ^0.5.12;

// https://github.com/makerdao/dss/blob/master/src/flap.sol
contract FlapAbstract {
    //mapping (address => uint256) public wards;
    function wards(address) public view returns (uint256);
    function rely(address) external;
    function deny(address) external;
    struct Bid {
        uint256 bid;
        uint256 lot;
        address guy;  // high bidder
        uint48  tic;  // expiry time
        uint48  end;
    }
    // mapping (uint256 => Bid) public bids;
    function bids(uint256) public view returns (uint256);
    // VatAbstract public vat;
    function vat() public view returns (address);
    // TokenAbstract public gem;
    // gem return address will conform to DSTokenAbstract
    function gem() public view returns (address);
    // uint256 public ONE;
    function ONE() public view returns (uint256);
    // uint256 public beg;
    function beg() public view returns (uint256);
    // uint48 public ttl;
    function ttl() public view returns (uint48);
    // uint48 public tau;
    function tau() public view returns (uint48);
    // uint256 public kicks;
    function kicks() public view returns (uint256);
    // uint256 public live;
    function live() public view returns (uint256);
    event Kick(uint256, uint256, uint256);
    function file(bytes32, uint256) external;
    function kick(uint256, uint256) external returns (uint256);
    function tick(uint256) external;
    function tend(uint256, uint256, uint256) external;
    function deal(uint256) external;
    function cage(uint256) external;
    function yank(uint256) external;
}
