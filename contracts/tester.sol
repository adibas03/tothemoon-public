
contract EtherMon{ 
    uint public starterEgg;
    address public owner;
   //data for each EtherMonData
   // currently only going to be 10 EtherMon
   uint public temp;
    struct EtherMonData{
        string name;
        uint[10] stats;
        
        
    }
    mapping (uint => EtherMonData) public ethermonID;
    
        
    
    
    //player data
    struct player{
        uint256 goldAmount;
        uint[10] listOfEggs;
        bool eggCoolDown;
        uint eggTime;
        uint eggID;
        bool battleCoolDown;
        bool breedingCoolDown;
        uint[10] ownedEthermon;
    }
  
      mapping (address => player) public listOfPlayers;
    
    function EtherMon(){
        owner = msg.sender;
        
        //create list of ethermon
        ethermonID[0].name = "bo";
        ethermonID[0].stats = [1,2];
        ethermonID[1].name = "jack";
        ethermonID[1].stats = [1,2];
        ethermonID[2].name = "man";
        ethermonID[2].stats = [1,2];
        ethermonID[3].name = "forever";
        ethermonID[3].stats = [1,2];
    }
    
    function createAccount(){
     
    
     starterEgg = block.timestamp % 10;
     
     listOfPlayers[msg.sender].goldAmount  = 100;
     listOfPlayers[msg.sender].listOfEggs[0] = starterEgg;
        
           
        }
        
        
    
    
    
    function trainEtherMon(address playersAddress)returns (uint256){
        return listOfPlayers[msg.sender].goldAmount;
    }
    
    function breedEtherMon(uint etherMOMID, uint etherDADID) external{
        
    }
    function getEgg(address player) external{
        
    }
    
    function incubateEgg(uint _eggIndex){
        
        if(listOfPlayers[msg.sender].eggCoolDown){
            revert();
        }
        listOfPlayers[msg.sender].eggCoolDown = true;
        listOfPlayers[msg.sender].listOfEggs[_eggIndex] = listOfPlayers[msg.sender].eggID;
       listOfPlayers[msg.sender].listOfEggs[_eggIndex] = 0;
        listOfPlayers[msg.sender].eggTime = block.timestamp;
        
    }
    function hatchEgg(){
    
        if(listOfPlayers[msg.sender].eggCoolDown = false){
            revert();
        }
        //uint temp;
         bool emptySpot = false;
        while(!emptySpot){
            uint i = 0;
            if(listOfPlayers[msg.sender].ownedEthermon[i] == 0){
                listOfPlayers[msg.sender].ownedEthermon[i] = listOfPlayers[msg.sender].eggID;
               emptySpot = true;
            }
        i++;
        
        
       
        } 
        
    }
        
        
    
    function battle() external{
        
        
    }
function getCurrentEggs() constant returns (uint[10]) {
 

            return listOfPlayers[msg.sender].listOfEggs;
        }
function getCurrentEtherMon() constant returns (uint[10]) {
 

            return listOfPlayers[msg.sender].ownedEthermon;
        }
    
 //used to create all new ethermon into the player's data
 // takes the ID for the ethermon, and address of player to get ethermon
 
    function createEtherMon(uint newMon, address _ownerOfEthermon) internal {
         //create list of ethermon
       
        
        }
    }

    
    
    
    
    
    
    
    
    
    
    
    
