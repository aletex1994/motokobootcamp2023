# Questions 🙋

1. Who controls the ledger canister? 
   A: The ledger is controlled by a network of validator nodes.

2. What is the subnet of the canister with the id: **mwrha-maaaa-aaaab-qabqq-cai**? How much nodes are running this subnet?  
   A : according to ICscan there are 16 nodes https://dashboard.internetcomputer.org/canister/mwrha-maaaa-aaaab-qabqq-cai
3. I have a neuron with 1O ICPs locked with a dissolve delay of 4 years - my neuron has been locked for 2 years. What is my expected voting power?
   A:  You would have 10% voting power. But since your ICPs are locked for 2 more years, you only have access to half of your voting power, which is 5%.

4. What is wrong with the following code?
```
actor {
  let n : Nat = 50;
  let t : Text = "Hello";
  public func convert_to_text(m : Nat) : async Text {
    Nat.toText(m);
  };
}
```
    A: Missing the return statement. 

5. What is wrong with the following code?
```
actor {
  var languages : [var Text] = ["English", "German", "Chinese", "Japanese", "French"];

  public func show_languages(language : Text) : async [var Text] {
    return (languages);
  };
 
}
```
   A: wrong declaration of mutable Array languages and an argument never used (language : Text).

6. What is wrong with the following code?
```
actor {
  var languages : [Text] = ["English", "German", "Chinese", "Japanese", "French"];

  public func add_language(new_language: Text) : async [Text] {
    languages := Array.append<Text>(languages, [new_language]);
    return (languages);
  };
 
}
```
    A: Append works only if we have 2 array in this case [Text] as argument. Languages must be declared as a mutable array not immutable. 