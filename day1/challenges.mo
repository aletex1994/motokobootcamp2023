import Blob "mo:base/Blob";
import Float "mo:base/Float";

actor challengeDayOne{

  let myAnswer : Text = "Nat32";
  var myNumber : Float = 0;
 
  public query func firstAnswer() : async Text {
    return myAnswer;
  };

  public func moltiplication(x:Float,y:Float) : async Float {
    var res = x*y;
    myNumber:=res;
    return myNumber;
  };

  public func addFloatAndSquare() : async Float {
    var addFloat : Float = 10.3;
    myNumber:=myNumber+addFloat;
    myNumber:=Float.sqrt(myNumber);
    return myNumber;
  };

}