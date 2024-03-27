// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/* Problem 1 Interface & Contract */
contract StudentV1 {
    // Note: You can declare some state variable
    uint256 first = 0;
    //uint256 output = 123;
    function register() external returns (uint256) {
        // TODO: please add your implementaiton here
        if (first==0) {
            first = 1;
            return 1000;
        }
        //output = 1000;
        return 123;
    }
}

/* Problem 2 Interface & Contract */
interface IClassroomV2 {
    function isEnrolled() external view returns (bool);
}

contract StudentV2 {
    function register() external view returns (uint256) {
        // TODO: please add your implementaiton here
        IClassroomV2 studentV2;
        studentV2 = IClassroomV2(msg.sender);
        bool hi = studentV2.isEnrolled();
        if (hi) return 123;
        return 1000;
    }
}

/* Problem 3 Interface & Contract */
contract StudentV3 {
    function register() external view returns (uint256) {
        // TODO: please add your implementaiton here
        uint256 xx = gasleft();
        if (xx<7000) return 123;
        return 1000;
    }
}
