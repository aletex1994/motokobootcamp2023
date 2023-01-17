import Array "mo:base/Array";
import Char "mo:base/Char";
import Debug "mo:base/Debug";
import Text "mo:base/Text";
import Iter "mo:base/Iter";
actor {
   let d : Char = 'D';
   public func getD() : async () {
      Debug.print(debug_show(Char.toNat32(d)))
   };

   let t : Text = "Hello World";
   let size : Nat = t.size();
   let t2 : Text = t # "from Italy";

   type Pattern = Text.Pattern;
   let pattern : Pattern = #char('c');
   let pattern2 : Pattern = #predicate(Char.isDigit);
   let text : Text = "motoko";
   let text2 : Text = "motoko2";
   public func test() : async Bool {
    return (Text.contains(text2,pattern2));
   };

   public func text_to_blob(t:Text) : async Blob{
    Text.encodeUtf8(t);
   };

   let myTextToIter : Text = "abcdefg";
   public func testIterator () : async () {
    for (letter in myTextToIter.chars()){
        Debug.print(debug_show(letter));
    }
   };

   let array : [Text] = ["Rust", "Motoko", "Java"];
    public func testArray () : async () {
     for (lang in array.vals()) {
          Debug.print("Hello" # lang);
     }
    };

    let i = Iter.fromArray(array);
    let isize = Iter.size(i);
}