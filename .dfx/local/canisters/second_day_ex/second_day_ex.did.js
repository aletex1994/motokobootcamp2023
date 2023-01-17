export const idlFactory = ({ IDL }) => {
  return IDL.Service({
    'getD' : IDL.Func([], [], []),
    'test' : IDL.Func([], [IDL.Bool], []),
    'testArray' : IDL.Func([], [], []),
    'testIterator' : IDL.Func([], [], []),
    'text_to_blob' : IDL.Func([IDL.Text], [IDL.Vec(IDL.Nat8)], []),
  });
};
export const init = ({ IDL }) => { return []; };
