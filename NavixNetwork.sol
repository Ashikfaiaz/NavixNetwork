
// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.20;

import {OFT} from "@layerzerolabs/lz-evm-oapp-v2/contracts/oft/OFT.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

contract NavixNetwork is OFT {
    constructor(address _layerZeroEndpoint, address _owner)
        OFT("Navix Network", "NAVIX", _layerZeroEndpoint, _owner)
        Ownable(_owner)
    {
        _mint(_owner, 500000000 * 10**decimals());
    }
}
