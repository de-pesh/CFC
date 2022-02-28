//SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.5.0 < 0.9.0;
contract Charity{

    uint internal o_count = 0;
    uint internal d_count = 0;
    struct Organisation {
        uint orgid;
        string name;
        uint amountCollected;
        uint amountUsed;
        uint amountRemaining;
    }

    struct Doner {
        uint donerid;
        string name;
        uint donate;
        uint money;
    }

    address internal CFC = msg.sender;
    mapping(uint => Doner) internal doner;
    mapping(uint => Organisation) internal org;

    uint public total_Donation=0;


    function Calculate(uint m, uint _d, uint _o) internal {
        org[_o].amountCollected+=m;
        org[_o].amountRemaining+=m;
        doner[_d].money-=m;
        total_Donation+=m;
    }

    modifier cfc() {
        require(msg.sender == CFC);
        _;
    }

    function Add_Organisation(string memory _orgName) cfc public {
        org[o_count++] = Organisation(o_count,_orgName, 0, 0, 0);
    }

    function Add_Doner(string memory _name) cfc public {
        doner[d_count++] = (Doner(d_count,_name, 0, 0));
    }

    function Donate(uint amount, uint d, uint o) public {
        string memory condition;
        if(doner[o].money>=amount) {
            if(o <= o_count) {
                Calculate(amount, d, o);
                condition = "Amount collected";
            }
            else
                condition = "Organisation not found";
        }
        else
            condition = "Not enough balance";

    }

    function AddMoney(uint _mon, uint _diid) public returns(string memory) {
        doner[_diid].money+=_mon;
        return "Successfully added money in your wallet";
    }

    function Doners_balance(uint _ddid) public view returns(uint) {
        return doner[_ddid].money;
    }

    function Org_balance(uint _ooid) public view returns(uint) {
        return org[_ooid].amountRemaining;
    }

    function Use_balance(uint _money, uint _orgid) public returns(string memory) {
        string memory x=" ";
        if(_money <= org[_orgid].amountRemaining) {
            org[_orgid].amountRemaining-=_money;
            org[_orgid].amountUsed+=_money;
            x = "Amount used successfully";
        }
        else
            x = "Not enough money";
        return x;
    }


}
