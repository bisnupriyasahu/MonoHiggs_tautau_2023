

class etau_analyzer::myclass 
{
  
  int shift;        // Attribute (int variable)
  string systematic_name;  // Attribute (string variable)
  TLorentzVector eleP4, tauP4, metP4;
  
  
public:
  myclass(){
  }
  ~myclass(){
  }
  void & get_values(){
    cout<<"shift="<<shift<<"  systematic_name="<<systematic_name<<endl;
  }
  
  void set_values(int x, string systName=""){
    shift = x; 
    systematic_name = systName;
    // eleindices = getEleCand(25.0, 2.1, 0);  ///// ele selected
    // tauindices = getTauCand(30.0, 2.3, 0 );
    //metP4.SetPtEtaPhiE(pfMET , 0, pfMETPhi, pfMET); 
  }

};
