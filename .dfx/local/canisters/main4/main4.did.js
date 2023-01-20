export const idlFactory = ({ IDL }) => {
  const List = IDL.Rec();
  List.fill(IDL.Opt(IDL.Tuple(IDL.Nat, List)));
  return IDL.Service({
    'test_reverse' : IDL.Func([], [List], []),
    'test_unique' : IDL.Func([], [List], []),
  });
};
export const init = ({ IDL }) => { return []; };
