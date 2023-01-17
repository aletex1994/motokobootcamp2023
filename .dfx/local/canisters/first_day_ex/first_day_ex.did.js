export const idlFactory = ({ IDL }) => {
  return IDL.Service({
    'conditionalRep' : IDL.Func([], [IDL.Nat], ['query']),
    'findmax' : IDL.Func([IDL.Float64, IDL.Float64], [IDL.Float64], ['query']),
    'findmin' : IDL.Func([IDL.Float64, IDL.Float64], [IDL.Float64], ['query']),
    'letsLoop' : IDL.Func([IDL.Nat], [IDL.Nat], ['query']),
    'petName' : IDL.Func([], [IDL.Opt(IDL.Text)], ['query']),
    'say' : IDL.Func([IDL.Bool], [IDL.Bool], ['query']),
    'set' : IDL.Func([IDL.Nat], [IDL.Text], []),
  });
};
export const init = ({ IDL }) => { return []; };
