// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Parent contract
contract Shape {
    string internal shapeType;
    
    constructor(string memory _type) {
        shapeType = _type;
    }
    
    function getType() public view returns (string memory) {
        return shapeType;
    }
}

// Child contract inheriting from Shape
contract Rectangle is Shape {
    uint private width;
    uint private height;
    
    constructor(uint _width, uint _height) Shape("Rectangle") {
        width = _width;
        height = _height;
    }
    
    function getArea() public view returns (uint) {
        return width * height;
    }
}

// Another child contract inheriting from Shape
contract Circle is Shape {
    uint private radius;
    
    constructor(uint _radius) Shape("Circle") {
        radius = _radius;
    }
    
    function getArea() public view returns (uint) {
        uint pi = 3; // Simplified value of pi for demonstration purposes
        return (pi * radius * radius) / 4;
    }
}
