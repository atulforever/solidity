
// SPDX-License-Identifier: GPL-3.0

pragma solidity >0.8.0;

contract TrasferMoney{

    address ownerAddress;
    
    constructor() {
        ownerAddress = msg.sender;
    }

    function sendMoney() public payable {
        
    }

    function getOwnerAddress() public view returns (address){
        return ownerAddress;
    }

    function getSenderAddress() public view returns(address) {
        return msg.sender;
    }

    function getBalance () public view returns(uint){
        return address(this).balance;
    }

    function withdrawAllMoney(address payable _to) public {
        require(msg.sender == ownerAddress,"Un-authorized access.");
        _to.transfer(address(this).balance);
    }    
}