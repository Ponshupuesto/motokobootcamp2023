1.- Who controls the ledger canister?

Answer: The ledger canister is controlled by the Network Nervous System (NNS) which is also responsible 
of the future of the network.


2.- What is the subnet of the canister with the id: mwrha-maaaa-aaaab-qabqq-cai? How much nodes are running this subnet?

Answer: pae4o-o6dxf-xki7q-ezclx-znyd6-fnk6w-vkv5z-5lfwh-xym2i-otrrw-fqe, 16 nodes are running this subnet.
Source:https://dashboard.internetcomputer.org/subnet/pae4o-o6dxf-xki7q-ezclx-znyd6-fnk6w-vkv5z-5lfwh-xym2i-otrrw-fqe




3.- I have a neuron with 1O ICPs locked with a dissolve delay of 4 years - my neuron has been locked for 2 years. What is my expected voting power?

Answer:




4.- What is wrong with the following code?

actor {
  let n : Nat = 50;
  let t : Text = "Hello";

  public func convert_to_text(m : Nat) : async Text {
    Nat.toText(m);
  };
 
}


Answer: We need to import Nat module. import Nat "mo:base/Nat";




5.- What is wrong with the following code?

actor {
  var languages : [var Text] = ["English", "German", "Chinese", "Japanese", "French"];

  public func show_languages(language : Text) : async [var Text] {
    return (languages);
  };
 
}


Answer: When we declare the array we need to use let instead of var and remove the var inside the square brackets [] of the
declaration and the async return value, since we are not going to change the array state we should add 
query to the func.



6.- What is wrong with the following code?


actor {
  var languages : [Text] = ["English", "German", "Chinese", "Japanese", "French"];

  public func add_language(new_language: Text) : async [Text] {
    languages := Array.append<Text>(languages, [new_language]);
    return (languages);
  };
 
}


Answer: Import the Array module
