//SPDX-License-Identifier:MIT

pragma solidity ^0.8.4;

contract testContract{

    uint public number = 2;
    uint public counter;

    event dataSet(
        string data,
        uint num
    );

    event numSet(
        address _from,
        uint changedNum
    );

    function setNumber(uint _number) public {
        number = _number;
        emit numSet(msg.sender , _number);
    }

    mapping(uint  => string ) public mapAddress;
 
    function setData(string memory _data) public{

        require(bytes(_data).length > 0);
        mapAddress[counter] = _data;
        emit dataSet( _data , counter);
        counter += 1;

    }
}
