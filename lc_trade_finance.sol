pragma solidity ^0.5.1;

 
contract tradefinance  {
 
    // document level txn at ipfs level
    struct lc_doc {
       string ipfs_hash;
       bool buyer_visibility;
       bool seller_visibility;
       bool buyer_bank_visibility;
       bool seller_bank_visibility;
       string lc_description;
    }
   
 
    // actual lc txn for the entire txn lifecycle  
    struct lc_txn {
        string buyer_name;
        string seller_name;
        string buyer_bank_name;
        string seller_bank_name;
    }
 
    uint last_lc_txn;
    uint last_lc_doc_txn;
    
    mapping(uint => lc_doc) public lc_docs; // maps doc reference number to a lc_record
    mapping(uint => lc_txn) public lc_txns; // maps actual lc txn (which includes docs) to the trade finance record
    
 
    
    function addLcDoc(string memory hash_code, bool buyer_visibility, bool seller_visibility,
    bool buyer_bank_visibility, bool seller_bank_visibility, string memory lc_description
        )  public returns (bool)  {
        last_lc_doc_txn++;
        lc_docs[last_lc_doc_txn].ipfs_hash=hash_code;
        lc_docs[last_lc_doc_txn].buyer_visibility=buyer_visibility;
        lc_docs[last_lc_doc_txn].seller_visibility=seller_visibility;
        lc_docs[last_lc_doc_txn].buyer_bank_visibility=buyer_bank_visibility;
        lc_docs[last_lc_doc_txn].seller_bank_visibility=seller_bank_visibility;
        lc_docs[last_lc_doc_txn].lc_description=lc_description;
 
        return true;
    }
    
    function addLcTxn(string memory buyer_name, string memory seller_name, string memory buyer_bank_name,  string memory seller_bank_name
        )   public returns (bool)  {
        last_lc_txn++;
        lc_txns[last_lc_txn].buyer_name=buyer_name;
        lc_txns[last_lc_txn].seller_name=seller_name;
        lc_txns[last_lc_txn].buyer_bank_name=buyer_bank_name;
        lc_txns[last_lc_txn].seller_bank_name=seller_bank_name;

        return true;
    }
 
  
}

   
