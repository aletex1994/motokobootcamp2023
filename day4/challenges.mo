import Buffer "mo:base/Buffer";
import List "mo:base/List";
import Iter "mo:base/Iter";

module {
    
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
    
    public func reverse<T>(l : List.List<T>) : List.List<T> {
        List.reverse<T>(l);
    };

    public func find_in_buffer<T>(buf: Buffer.Buffer<T>, val: T) : ?Nat {
        return Buffer.indexOf<T>(val, buf, func a = a == val);
    };

};