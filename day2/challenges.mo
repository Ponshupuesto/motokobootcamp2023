

actor challenge{
    
    //Write a function average_array that takes an array of integers and returns the average value of the elements in the array.

    public query func average_array(array : [Int]) : async Int{
        var suma : Int = 0;
        for(item in array.vals()) {
            suma += item;
            };
            return suma / array.size();   
    
  };

  //Character count: Write a function that takes in a string and a character, and returns the number of occurrences of that character in the string.

    public query func count_character(t : Text, c : Char) : async Nat{
        var suma : Nat = 0;
        for(item in Text.toIter(t)) {
        if(Char.equal(item,c)){
            suma += 1;
        };      
        };
        return suma;
    }

    //Write a function factorial that takes a natural number n and returns the factorial of n.

    public query func factorial(n:Nat) : async Nat{
        let iter = Iter.range(1, n);
        var factorial = 1;
        for(i in iter) {
        factorial *= i;            
        };  

        return factorial;
  };

  //Write a function number_of_words that takes a sentence and returns the number of words in the sentence.

    public query func number_of_words(t : Text) : async Nat {
        return Iter.size(Text.split(t, #char ' '));
  };


  //Write a function find_duplicates that takes an array of natural numbers and returns a new array containing all duplicate numbers. The order of the elements in the returned array should be the same as the order of the first occurrence in the input array.

  public func find_duplicates(a : [Nat]) : async [Nat] {
    var duplicatesArray : [Nat] = [];
    for (i in a.vals()){
      var temp : [Nat] = Array.filter<Nat>(a, func x = x == i);
          if(temp.size() > 1) {
            duplicatesArray := Array.append(duplicatesArray, [i]);
          };
      };
    return duplicatesArray;   
  };



    
}