import type { Principal } from '@dfinity/principal';
import type { ActorMethod } from '@dfinity/agent';

export interface Book {
  'title' : string,
  'year' : bigint,
  'author' : string,
  'pages' : bigint,
  'publishingHouse' : string,
}
export interface _SERVICE {
  'add_book' : ActorMethod<[Book], undefined>,
  'get_books' : ActorMethod<[], Array<Book>>,
}
