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
    
    mapping(uint => lc_record) public lc_records; // maps doc reference number to a lc_record
    mapping(uint => lc_txn) public lc_txns; // maps actual lc txn (which includes docs) to the trade finance record
    
 
    
    function addLcDoc(string ipfsHash, bool buyer_visibility, bool seller_visibility,
    bool buyer_bank_visibility, bool seller_bank_visibility, string lc_description
        )  public returns (bool)  {
        last_lc_doc_txn++;
        lc_txn[last_lc_doc_txn].ipfs_hash=hash_code;
        lc_txn[last_lc_doc_txn].buyer_visibility=buyer_visibility;
        lc_txn[last_lc_doc_txn].seller_visibility=seller_visibility;
        lc_txn[last_lc_doc_txn].buyer_bank_visibility=buyer_bank_visibility;
        lc_txn[last_lc_doc_txn].seller_bank_visibility=seller_bank_visibility;
        lc_txn[last_lc_doc_txn].lc_description=lc_description;
 
        return true;
    }
    
    function addLcTxn(string buyer_name, string seller_name, string buyer_bank_name,  string seller_bank_name
        )   public returns (bool)  {
        last_lc_doc_txn++;
        lc_txn[last_lc_doc_txn].ipfs_hash=hash_code;
        lc_txn[last_lc_doc_txn].buyer_visibility=buyer_visibility;
        lc_txn[last_lc_doc_txn].seller_visibility=seller_visibility;
        lc_txn[last_lc_doc_txn].buyer_bank_visibility=buyer_bank_visibility;
        lc_txn[last_lc_doc_txn].seller_bank_visibility=seller_bank_visibility;
        lc_txn[last_lc_doc_txn].lc_description=lc_description;
 
        return true;
    }
 
  
}

   
