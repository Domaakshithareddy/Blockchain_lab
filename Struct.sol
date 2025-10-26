// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Structures {

    struct StudentInfo {
        uint roll_no;
        string name;
        bool has_chosen_elective;
    }

    StudentInfo s1;

    function printInfo() public view returns (uint, string memory, bool) {
        return (s1.roll_no, s1.name, s1.has_chosen_elective);
    }

    function setInfo(uint roll_no, string memory name, bool has_chosen_elective) public {
        s1.roll_no = roll_no;
        s1.name = name;
        s1.has_chosen_elective = has_chosen_elective;
    }
}