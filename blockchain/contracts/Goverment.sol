pragma solidity 0.5.12;

import '@openzeppelin/upgrades/contracts/Initializable.sol';

contract Government is Initializable {
    uint256 public population;
    mapping(uint256 => address) public people;
    mapping(address => bool) public isRegisterd;

}
