pragma solidity ^0.4.25;
contract Overflow {
    uint private sellerBalance=0;

    function add(uint value) returns (bool, uint){
        sellerBalance += value;
        assert(sellerBalance >= value);
    }
}