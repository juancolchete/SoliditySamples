pragma solidity ^0.6.0;

contract SimpleStorage{
    
    uint256 favoriteNumber;
    bool favoriteBool;
    
    struct People {
        uint256 favoriteNumber;
        string name;
    }
    
    People[] public people;
        
    function store(uint256 _favoriteNumber) public{
        favoriteNumber = _favoriteNumber;
    }
    
    function retrive() public view returns(uint256){
        return favoriteNumber;
    }
    
    function addPerson(string memory _name, uint256 _favoriteNumber) public{
        people.push(People(_favoriteNumber,_name));
    }

}