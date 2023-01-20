import Buffer "mo:base/Buffer";
import List "mo:base/List";
import Fn "./challenges";
import Principal "mo:base/Principal";
import Map "mo:base/HashMap";
import Iter "mo:base/Iter";

actor{

   // Test unique and reverse from challenges.mo
   public func test_unique() : async List.List<Nat>{
        var myArray : [Nat] = [0,0,2,3,6,6,6,2,5,7];
        var myList = List.fromArray<Nat>(myArray);
        return Fn.unique(myList);
    };

    public func test_reverse() : async List.List<Nat>{
        var myArray : [Nat] = [0,0,2,3,6,6,6,2,5,7];
        var myList = List.fromArray<Nat>(myArray);
        return Fn.reverse(myList);
    };

    public query ({ caller }) func is_anon() : async Bool {
        Principal.isAnonymous(caller);
    };

    let usernames = Map.HashMap<Principal, Text>(0, Principal.equal, Principal.hash);

    public query func get_usernames() : async [(Principal, Text)] {
        Iter.toArray(usernames.entries());
    };

    // Test find in buffer
    public func test_find_in_buffer() : async ?Nat{
        let my_buffer = Buffer.Buffer<Nat>(1);
        my_buffer.add(4);
        my_buffer.add(12);
        return Fn.find_in_buffer(my_buffer,4);
  };


};
