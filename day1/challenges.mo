import Blob "mo:base/Blob";
import Float "mo:base/Float";

actor challengeDayOne{

  let myAnswer : Text = "Nat32";
  var myNumber : Float = 0;
 
  public query func firstAnswer() : async Text {
    return myAnswer;
  };

  public func moltiplication(x:Float,y:Float) : async Float {
    myNumber := x*y;
    return myNumber;
  };

  public func addFloatAndSquare() : async Float {
    myNumber:=myNumber+10.3;
    myNumber:=Float.sqrt(myNumber);
    return myNumber;
  };

}