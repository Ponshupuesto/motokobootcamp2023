1. How much is the current memory capacity of a canister?

Answer: Canisters can hold 48GiB of stable memory.

Source: https://forum.dfinity.org/t/increased-canister-smart-contract-memory/6148/140




2. What is the issue with the following code sample?

actor {
  let counter : Nat = 0;
  public func increment_counter() : async () {
    counter := counter + 1;
  };
}

Answer: Expected mutable assignment target error, this is because the counter variable is declared with "let", 
this means its immutable, so changing it to "var" which are mutable variables will fix the problem.





3. What is the issue with the following code sample?


actor {
  var message : Text = 0;

  public query func change_message(new_message : Text) : async () {
    message := new_message;
    return;
  };
  
  public query func see_message() : async Text {
    return(message);
  };
}

Answer: var message is expecting Text type, so all we have to do is put double quotation on the "0", also if
we want the change_message func to actually change the message, we need to use an "update call" since we want 
to modify the state , we can acheave this by removing the word "query" from the function.



4. False or True: we can remove the keyword async for return argument of a query function since queries are faster to answer.

Answer: False, query function must have syntactic return type 'async <typ>'


