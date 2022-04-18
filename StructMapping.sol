
// SPDX-License-Identifier: GPL-3.0

pragma solidity >0.8.0;

contract StructMapping {

    mapping (address => bool) public ownerAddress;

    function setOwnerAddress(bool _allow) public returns(address) {
        ownerAddress[address(msg.sender)] = _allow;
        return address(msg.sender);
    }
    
}