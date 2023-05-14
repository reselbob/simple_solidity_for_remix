// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;
import "./Location.sol";

contract LocationFactory {
    function getLocation(uint16 _longitude, uint16 _latitude) public returns (ILocation) {
        return new Location(_longitude, _latitude);
    }
}
