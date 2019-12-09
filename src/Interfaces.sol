pragma solidity ^0.5.12;

import { GemAbstract } from "./ERC/GemAbstract.sol";

import { DSAuthorityAbstract, DSAuthEventsAbstract, DSAuthAbstract } from "./dapp/DSAuthorityAbstract.sol";
import { DSChiefAbstract } from "./dapp/DSChiefAbstract.sol";
import { DSPauseAbstract } from "./dapp/DSPauseAbstract.sol";
import { DSPauseProxyAbstract } from "./dapp/DSPauseProxyAbstract.sol";
import { DSRolesAbstract } from "./dapp/DSRolesAbstract.sol";
import { DSSpellAbstract } from "./dapp/DSSpellAbstract.sol";
import { DSSpellBookAbstract } from "./dapp/DSSpellBookAbstract.sol";
import { DSTokenAbstract } from "./dapp/DSTokenAbstract.sol";
import { DSValueAbstract } from "./dapp/DSValueAbstract.sol";

import { AuthGemJoinAbstract } from "./dss/AuthGemJoinAbstract.sol";
import { CatAbstract } from "./dss/CatAbstract.sol";
import { DaiAbstract } from "./dss/DaiAbstract.sol";
import { DaiJoinAbstract } from "./dss/DaiJoinAbstract.sol";
import { EndAbstract } from "./dss/EndAbstract.sol";
import { ETHJoinAbstract } from "./dss/ETHJoinAbstract.sol";
import { FlapAbstract } from "./dss/FlapAbstract.sol";
import { FlipAbstract } from "./dss/FlipAbstract.sol";
import { FlopAbstract } from "./dss/FlopAbstract.sol";
import { GemJoinAbstract } from "./dss/GemJoinAbstract.sol";
import { MKRAbstract } from "./dss/MKRAbstract.sol";
import { PipAbstract } from "./dss/PipAbstract.sol";
import { PotAbstract } from "./dss/PotAbstract.sol";
import { SpotAbstract } from "./dss/SpotAbstract.sol";
import { VatAbstract } from "./dss/VatAbstract.sol";
import { VowAbstract } from "./dss/VowAbstract.sol";
