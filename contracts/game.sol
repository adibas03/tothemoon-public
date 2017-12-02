pragma solidity ^0.4.11;

contract Game {
    
    address owner;
    
    modifier onlyOwner {
        require(msg.sender == owner);
        _;
    }
    uint256 totalPlayers;
    struct Planet {
        bytes32 name;
        uint iron;
        uint gold;
        uint diamonds;
        uint oil;
        uint spacegoo;
    }
    mapping(address => Planet) public planets;
    struct player{
        uint256 playerID;
        uint[20] inventory;
        bool CoolDown;
        uint lastBlockTime;
        uint[10] resources;
    }
    mapping (address => player) public listOfPlayers;
    
    function Game() {
    
    totalPlayers = 0;
        
    }
    /* Needs to take player address and create a new player
    *   gives starter amount
    *
    */
      function createAccount(){
     
    
     listOfPlayers[msg.sender].playerID = totalPlayers++;
     
     listOfPlayers[msg.sender].goldAmount  = 10;
        }
        
        /* Needs to save the player data
        *   Will be called from the phaser game after so many minutes has cooled down between requests
        *   needs to save: map tiles, resource amount, inventory amount, player stats, probably more
        *
        */
    function save(){
    
    
    }
    
    function spawn(bytes32 planetName) payable {
        Planet newPlanet;
        newPlanet.name = planetName;
        
        planets[msg.sender] = newPlanet;
  }
}
