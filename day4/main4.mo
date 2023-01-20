import Buffer "mo:base/Buffer";
import List "mo:base/List";
import Prelude "mo:base/Prelude";

module {
    // challenge 1
    // we should pass second argument with compare function for abstart type T
    public func unique<T>(l : List.List<T>) : List.List<T> {
        var list = List.nil<T>();
        let iter = List.toIter<T>(l);
        for (i in iter) {
            if (not List.some<T>(list, func a = a == i)) {
                list := List.push<T>(i, list);
            }
        };
        list;
    };

    // challenge 2
    // perhaps I misunderstand the challenge
    public func reverse<T>(l : List.List<T>) : List.List<T> {
        List.reverse<T>(l);
    };

};