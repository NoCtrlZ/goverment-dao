pragma solidity 0.5.12;

contract Proposal {
    address public proposer;
    address public proposeContract;
    bool public isApproved;
    bool public isValid;
    uint8 public yeses;
    uint8 public againist;
    uint8 public invalidVote;
    uint256 public budget;
    uint256 public expirationDate;
    uint256 public termOfOffice;
    string public url;
    address public test;

    constructor(address _proposer, address _proposeContract, uint256 _expirationDate, string memory _url) public {
        proposer = _proposer;
        expirationDate = _expirationDate;
        proposeContract = _proposeContract;
        url = _url;
    }

    modifier onlyProposeContract(address _address) {
        require(
            msg.sender == proposeContract,
            "Sender is invalid"
        );
        _;
    }

    function ballotForBill() public onlyProposeContract(msg.sender) {
        test = msg.sender;
        yeses++;
    }

    function ballotAganistForBill() public {
        test = msg.sender;
        againist++;
    }

    function getYeses() public view returns(uint8) {
        return yeses;
    }

    function getAgainist() public view returns(uint8) {
        return againist;
    }

    function getURL() public view returns(string memory) {
        return url;
    }
}