pragma solidity 0.5.12;

import './Proposal.sol';
import '@openzeppelin/upgrades/contracts/Initializable.sol';

contract Propose {
    mapping(address => bool) public proposalList;

    event Propose(address proposalAddress);

    function propose(string memory _url) public {
        Proposal newProposal = new Proposal(msg.sender, address(this), now, _url);
        proposalList[address(newProposal)] = true;
        emit Propose(address(newProposal));
    }

    function ballotForBill(address proposalAddress) public {
        Proposal proposal = Proposal(proposalAddress);
        proposal.ballotForBill();
    }

    function getYeses(address proposalAddress) public view returns(uint8) {
        Proposal proposal = Proposal(proposalAddress);
        return proposal.getYeses();
    }

    function getProposeContract(address proposalAddress) public view returns(address) {
        Proposal proposal = Proposal(proposalAddress);
        return proposal.proposeContract();
    }

    function getTest(address proposalAddress) public view returns(address) {
        Proposal proposal = Proposal(proposalAddress);
        return proposal.test();
    }
}