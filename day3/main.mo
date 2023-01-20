import Book "./book";
import HashMap "mo:base/HashMap";
import Nat "mo:base/Nat";
import Hash "mo:base/Hash";
import List "mo:base/List";

actor{

    var list = List.nil<Book.Book>();

    public func add_book(book : Book.Book) : async () {
    list := List.append(list, List.make<Book.Book>(book));
    };

    public query func get_books() : async [Book.Book] {
    return List.toArray(list);
    };

};