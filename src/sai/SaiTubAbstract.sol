pragma solidity ^0.5.12;

// https://github.com/makerdao/sai/blob/master/src/tub.sol
contract SaiTubAbstract {
    // DSToken  public  sai;  // Stablecoin
    function sai() public view returns (address);
    // DSToken  public  sin;  // Debt (negative sai)
    function sin() public view returns (address);
    // DSToken  public  skr;  // Abstracted collateral
    function skr() public view returns (address);
    // ERC20    public  gem;  // Underlying collateral
    function gem() public view returns (address);
    // DSToken  public  gov;  // Governance token
    function gov() public view returns (address);
    // SaiVox   public  vox;  // Target price feed
    function vox() public view returns (address);
    // DSValue  public  pip;  // Reference price feed
    function pip() public view returns (address);
    // DSValue  public  pep;  // Governance price feed
    function pep() public view returns (address);
    // address  public  tap;  // Liquidator
    function tap() public view returns (address);
    // address  public  pit;  // Governance Vault
    function pit() public view returns (address);
    // uint256  public  axe;  // Liquidation penalty
    function axe() public view returns (uint256);
    // uint256  public  cap;  // Debt ceiling
    function cap() public view returns (uint256);
    // uint256  public  mat;  // Liquidation ratio
    function mat() public view returns (uint256);
    // uint256  public  tax;  // Stability fee
    function tax() public view returns (uint256);
    // uint256  public  fee;  // Governance fee
    function fee() public view returns (uint256);
    // uint256  public  gap;  // Join-Exit Spread
    function gap() public view returns (uint256);
    // bool     public  off;  // Cage flag
    function off() public view returns (bool);
    // bool     public  out;  // Post cage exit
    function out() public view returns (bool);
    // uint256  public  fit;  // REF per SKR (just before settlement)
    function fit() public view returns (uint256);
    // uint256  public  rho;  // Time of last drip
    function rho() public view returns (uint256);
    // uint256  public  rum;  // Total normalised debt
    function rum() public view returns (uint256);
    // uint256  public  cupi;
    function cupi() public view returns (uint256);
    // mapping (bytes32 => Cup)  public  cups;
    function cups(bytes32) public view returns (address, uint256, uint256, uint256);
    function lad(bytes32) public view returns (address);
    function ink(bytes32) public view returns (address);
    function tab(bytes32) public view returns (uint256);
    function rap(bytes32) public returns (uint256);
    function din() public returns (uint256);            // Total CDP Debt
    function air() public view returns (uint256);       // Backing collateral
    function pie() public view returns (uint256);       // Raw collateral
    function era() public view returns (uint256);
    function mold(bytes32, uint256) public;             // Risk parameter config
    function setPip(address) public;                    // Price feed setter
    function setPep(address) public;                    // Price feed setter
    function setVox(address) public;                    // Price feed setter
    function turn(address) public;                      // Tap setter
    function per() public view returns (uint256);       // Wrapper ratio (gem per skr)
    function ask(uint256) public view returns (uint256);// Join price (gem per skr)
    function bid(uint256) public view returns (uint256);// Exit price (gem per skr)
    function join(uint256) public;
    function exit(uint256) public;
    function chi() public returns (uint256);
    function rhi() public returns (uint256);
    function drip() public;
    function tag() public view returns (uint256);       // Abstracted collateral price (ref per skr)
    function safe(bytes32) public returns (bool);       // Returns true if cup is well-collateralized
    function open() public returns (bytes32);
    function give(bytes32, address) public;
    function lock(bytes32, uint256) public;
    function free(bytes32, uint256) public;
    function draw(bytes32, uint256) public;
    function wipe(bytes32, uint256) public;
    function shut(bytes32) public;
    function bite(bytes32) public;
    function cage(uint256, uint256) public;
    function flow() public;
    // ds-thing
    // DSAuthority  public  authority;
    function authority() public view returns (address);
    // address      public  owner;
    function owner() public view returns (address);
    function setOwner(address) public;
    function setAuthority(address) public;
}
