// SPDX-License-Identifier: MIT

pragma solidity ^0.8.28;


contract JobBoard{

    struct JobInfo{
        string jobtitle;
        string jobdescription;
        uint256 salary;
        uint256 applycost;
    }

    struct application{
        string name;
        string cv;
    }
    application[] public applications
    JobInfo[] public jobinfos;

    uint256 public bidammount;

    function jobposting(string memory _jobtitle,
            string memory _jobdescription, 
            uint256 _salary, uint256 _applycost) public {

                bidammount = _applycost

                jobinfos.push(JobInfo(_jobtitle, _jobdescription, _salary, _applycost));
    }

    function getJobsByIndex(uint256 _i) public view returns(string memory, string memory, uint256){
        JobInfo memory job = jobinfos[_i];
        return (job.jobtitle, job.jobdescription, job.salary);
    }

    mapping(address => uint256) public balance;

    function addBalance(uint256 _ammount) public {
        balance[msg.sender] = balance + _ammount;
    }

    function applyToJobs(string memory _name, string memory _cv) public {
        require(msg.sender != address(0), "you cant apply to yourself");
        require(balance[msg.sender] >= bidammount, "insuffesent balance");
        applications.push(application(_name, _cv));


    }
}

