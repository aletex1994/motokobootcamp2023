export const idlFactory = ({ IDL }) => {
  const Book = IDL.Record({
    'title' : IDL.Text,
    'year' : IDL.Nat,
    'author' : IDL.Text,
    'pages' : IDL.Nat,
    'publishingHouse' : IDL.Text,
  });
  return IDL.Service({
    'add_book' : IDL.Func([Book], [], []),
    'get_books' : IDL.Func([], [IDL.Vec(Book)], ['query']),
  });
};
export const init = ({ IDL }) => { return []; };
