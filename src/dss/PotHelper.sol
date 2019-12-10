pragma solidity ^0.5.12;

import { PotAbstract } from "./PotAbstract.sol";

// https://github.com/makerdao/dss/blob/master/src/pot.sol
contract PotHelper {

    PotAbstract pa;
    
    constructor(address pot) public {
        pa = PotAbstract(pot);
    }

    // https://github.com/makerdao/dss/blob/master/src/pot.sol#L79
    uint256 constant ONE = 10 ** 27;
    
    function mul(uint x, uint y) internal pure returns (uint z) {
        require(y == 0 || (z = x * y) / y == x);
    }

    function rmul(uint x, uint y) internal pure returns (uint z) {
        z = mul(x, y) / ONE;
    }

    function rpow(uint x, uint n, uint base) internal pure returns (uint z) {
        assembly {
            switch x case 0 {switch n case 0 {z := base} default {z := 0}}
            default {
                switch mod(n, 2) case 0 { z := base } default { z := x }
                let half := div(base, 2)  // for rounding.
                for { n := div(n, 2) } n { n := div(n,2) } {
                    let xx := mul(x, x)
                    if iszero(eq(div(xx, x), x)) { revert(0,0) }
                    let xxRound := add(xx, half)
                    if lt(xxRound, xx) { revert(0,0) }
                    x := div(xxRound, base)
                    if mod(n,2) {
                        let zx := mul(z, x)
                        if and(iszero(iszero(x)), iszero(eq(div(zx, x), z))) { revert(0,0) }
                        let zxRound := add(zx, half)
                        if lt(zxRound, zx) { revert(0,0) }
                        z := div(zxRound, base)
                    }
                }
            }
        }
    }

    // View function for calculating value of chi iff drip() is called in the same block.
    function drop() external view returns (uint256) {
        if (now == pa.rho()) return pa.chi();
        return rmul(rpow(pa.dsr(), now - pa.rho(), ONE), pa.chi());
    }

    // Pass the Pot Abstract for additional operations
    function pot() external view returns (PotAbstract) {
        return pa;
    }
}