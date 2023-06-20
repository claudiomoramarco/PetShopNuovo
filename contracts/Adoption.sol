pragma solidity ^0.5.0; 


contract Adoption{
    address[16] public adopters;
    //il tipo è address, di una lunghezza fissata 16,adopters è public e richiede una chiave e ritorna un valore singolo

    //in solidity i types di input e outpu devono essere specificati,
    //in questo caso prendiamo un petId e ritorniamo un valore e faremo un check
    //per vedere se petId è nel range del nostro adopters array
    //array in solidity sono da 0, quindi il valore 0 sara da 0 a 15
    //usiamo un require statement per assicurarci che l'id è nel range
    function adopt(uint petId) public returns(uint) {
        require(petId >= 0 && petId <= 15);
        //se l'id è nel range aggiungi l'indirizzo che fa la chiamata
        //al nostro adopters array
        //l'address della persona dello smart contract che chiama 
        //questa funzione grazie a msg sender
        adopters[petId] = msg.sender;

        return petId; //ritorna solo un valore singolo da una chiave data, ma fare 16 api
                      //non è l'ideale
    }
        //getadopters, the view parola  nella dichiarazione significa 
        //che la funzione non modificherà lo stato del contratto, dato che 
        //adopters è gia dichiarata la possiamo diretttamente ritornare  

        // Retrieving the adopters
        function getAdopters() public view returns (address[16] memory) {
         return adopters;
                    }
        

        }              
       
