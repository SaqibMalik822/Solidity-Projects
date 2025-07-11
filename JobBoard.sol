// SPDX-License-Identifier: MIT

pragma solidity ^0.8.28;


contract JobBoard{

    struct JobInfo{
        string jobtitle;
        string jobdescription;
        uint256 salary;
    }

    struct applications{
        string name;
        string cv;
    }

    JobInfo[] public jobinfos;
    uint256 public bidammount;

    function jobposting(string memory _jobtitle,
            string memory _jobdescription, 
            uint256 _salary) public {

                jobinfos.push(JobInfo(_jobtitle, _jobdescription, _salary));
    }

    function getJobsByIndex(uint256 _i) public view returns(string memory, string memory, uint256){
        JobInfo memory job = jobinfos[_i];
        return (job.jobtitle, job.jobdescription, job.salary);
    }

    mapping(address => uint256) public balance;

    function addBalance(uint256 _ammount) public {
        balance[msg.sender] += _ammount;
    }

    function applyToJobs(string memory _name, string memory _cv, uint256 _ammount) public {
        require(msg.sender != address(0), "you cant apply to yourself");
        require(balance[msg.sender] >= bidammount, "insuffesent balance");
    }
}