// SPDX-License-Identifier: GPL-3.0

pragma solidity >0.8.0;

contract TrasferMoney{

    address public myAddress;

    function getSenderAddress() public view returns(address) {
        return msg.sender;
    }

    function getBalance () public view returns(uint){
        return address(this).balance;
    }

    function SendMoney() public payable {
        
    }
}