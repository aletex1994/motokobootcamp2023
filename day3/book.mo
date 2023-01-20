import Text "mo:base/Text";
module{
    
   public type Book = {
    author : Text;
    pages : Nat;
    publishingHouse : Text;
    title : Text;
    year : Nat;
  };

  public func create_book(
    title : Text,
    author : Text,
    publishingHouse : Text,
    year : Nat,
    pages : Nat,
  ) : async Book {
    return { title; pages; author; year; publishingHouse };
  };

};
