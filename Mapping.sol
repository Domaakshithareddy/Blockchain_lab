// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Maps {

    struct Student {
        string name;
        string subject;
        uint8 marks;
    }

    mapping(address => Student) private results;
    address[] private studentResults;

    function adding_values() public {
        address studentAddress = 0x58b9bDaA6E3464f703550722109877D600DE24EC;

        results[studentAddress] = Student({
            name: "John",
            subject: "Chemistry",
            marks: 88
        });

        studentResults.push(studentAddress);
    }

    function get_student_result() public view returns (address[] memory) {
        return studentResults;
    }

    function count_students() public view returns (uint256) {
        return studentResults.length;
    }
}
