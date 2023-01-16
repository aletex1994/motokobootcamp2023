import Float "mo:base/Float"

actor Registry {

    // Mutable
    var x : Text = "Hola in Spanish";
    x := "Hi in English";

    // Immutable
    let y : Text = "Hola in Spanish";

    // Functions
    public query func say(value: Bool) : async Bool {
        return value;
    };


    var counter : Nat = 0;
    var earned : Nat = 10*2;
    public func set(n:Nat) : async Text {
        counter:= n; 
        return "Counter set";
    };

    public query func findmax (x:Float, y:Float) : async Float {
        return Float.max(x,y);
    };

    public query func findmin (x:Float, y:Float) : async Float {
        return Float.min(x,y);
    };

    var myPet : ?Text = null;
    public query func petName() : async ?Text {
        return myPet;
    };

    public query func letsLoop(totTimes : Nat) : async Nat {
        while (counter < totTimes) {
            counter := counter + 1;
        };
        return counter;
    };  

    public query func conditionalRep() : async Nat{
        while ( counter < 10 and earned <100){
            earned+1;
        }
        return earned;
    }
    
};