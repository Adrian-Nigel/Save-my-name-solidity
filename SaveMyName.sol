// SPDX-License-Identifier: MIT
pragma solidity ^0.8.31;

contract SaveMyName{
    string name;
    string bio;

    function add(string memory _name,string memory _bio) public {
        name=_name;
        bio=_bio;
    }

    function retrieve() public view returns(string memory,string memory){
        return (name,bio);
    }

    function saveAndRetrieve(string memory _bio, string memory _name) public  returns(string memory,string memory){
        bio=_bio;
        name=_name;
        return (bio,name);
    }
}