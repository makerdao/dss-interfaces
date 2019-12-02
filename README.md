Provides programmatic interfaces for the Dai Stablecoin System core contracts.

Import all DSS abstract contracts

```
import "dss-interfaces/Interfaces.sol";
```

Import multiple contracts

```
import { VatAbstract, VowAbstract } from "dss-interfaces/Interfaces.sol";
```

Import individual contracts

```
import "lib/dss-interfaces/src/dss/VatAbstract.sol";
```


## Example Usage


```
import { VatAbstract } from "./Interfaces.sol";

pragma solidity ^0.5.12;

contract Testerface {
    
    VatAbstract _vat;
    
    constructor() public {
        _vat = VatAbstract(0xbA987bDB501d131f766fEe8180Da5d81b34b69d9);
    }
    
    function viewDebt() public view returns (uint256) {
        return _vat.debt();
    }    
}
```
