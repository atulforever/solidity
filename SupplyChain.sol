
// SPDX-License-Identifier: GPL-3.0

pragma solidity > 0.8.0;

contract ItemManager{

    enum SupplyStatus { Created, Paid, Delivered }

    struct Item {
        SupplyStatus _status;
        string _identifier;
        uint _priceInWei;
    }

    mapping(uint => Item) public items;
    uint index;

    event EvSupplyStatus(uint _index, uint _status);

    function createItem(string memory identifier, uint price ) public {

        items[index]._identifier = identifier;
        items[index]._priceInWei = price;
        items[index]._status = SupplyStatus.Created;

        emit EvSupplyStatus (index, uint(items[index]._status));

        index++;
    }    
}