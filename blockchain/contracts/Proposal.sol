pragma solidity 0.5.12;

contract Proposal {
    address public proposer;
    address public govermentContract;
    bool public isApproved;
    bool public isValid;
    uint8 public yeses;
    uint8 public againist;
    uint8 public invalidVote;
    uint256 public budget;
    uint256 public expirationDate;
    uint256 public termOfOffice;
    string public url;

    constructor(address _proposer, address _govermentContract, uint256 _expirationDate, string memory _url) public {
        proposer = _proposer;
        expirationDate = _expirationDate;
        govermentContract = _govermentContract;
        url = _url;
    }

    function ballotForBill() public {
        yeses++;
    }

    function ballotAganistForBill() public {
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