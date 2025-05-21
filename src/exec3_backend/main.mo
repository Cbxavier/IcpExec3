import Buffer "mo:base/Buffer";
import Array "mo:base/Array";
import Iter "mo:base/Iter";
actor {
  var pessoas = Buffer.Buffer<Text>(0);

  public func adicionarPessoas(pessoa : Text) {
    pessoas.add(pessoa);
    return;
  };

  public func listarPessoas() : async [Text]{
    let listaPessoas =  Buffer.Buffer<Text>(pessoas.size());

    for (pessoa in pessoas.vals()){
      listaPessoas.add(pessoa);
    };

    return listaPessoas.toArray();

  };

};
