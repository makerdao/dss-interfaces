pragma solidity ^0.5.12;

import { DSThingAbstract } from "../dapp/DSThingAbstract.sol";

// https://github.com/makerdao/sai/blob/master/src/top.sol
contract SaiTopAbstract is DSThingAbstract {
    // SaiVox   public  vox;
    function vox() public view returns (address);
    // SaiTub   public  tub;
    function tub() public view returns (address);
    // SaiTap   public  tap;
    function tap() public view returns (address);
    // DSToken  public  sai;
    function sai() public view returns (address);
    // DSToken  public  sin;
    function sin() public view returns (address);
    // DSToken  public  skr;
    function skr() public view returns (address);
    // ERC20    public  gem;
    function gem() public view returns (address);
    // uint256  public  fix;  // sai cage price (gem per sai)
    function fix() public view returns (uint256);
    // uint256  public  fit;  // skr cage price (ref per skr)
    function fit() public view returns (uint256);
    // uint256  public  caged;
    function caged() public view returns (uint256);
    // uint256  public  cooldown = 6 hours;
    function cooldown() public view returns (uint256);
    function era() public view returns (uint256);
    function cage() public;
    function flow() public;
    function setCooldown(uint256) public;
}
