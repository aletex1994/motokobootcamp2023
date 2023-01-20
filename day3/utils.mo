import Array "mo:base/Array";
import List "mo:base/List";

actor{

    public func second_maximum(array : [Int]) : async Int {
    var firstLargestNumber : Int = -1;
    var secondLargestNumber : Int = -1;
    for (element in array.vals()) {
      if (element > firstLargestNumber) {
        secondLargestNumber := firstLargestNumber;
        firstLargestNumber := element;
      } else if (element > secondLargestNumber and element != firstLargestNumber) {
        secondLargestNumber := element;
      };
    };
    return secondLargestNumber;
    };

    public func remove_even(array : [Nat]) : async [Nat] {
    return Array.filter<Nat>(array, func x = x % 2 != 0);
    };

    func drop<T>(array : [T], n : Nat) :  [T] {
      var myList = List.fromArray<T>(array);
      var droppedList = List.drop<T>(myList,n);
      return List.toArray<T>(droppedList);
    };

    // Drop Test
    public func dropped() : async [Nat]{
      let array : [Nat] =[0,1,2];
      return drop(array,2);
    }
}