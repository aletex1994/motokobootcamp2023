import type { Principal } from '@dfinity/principal';
import type { ActorMethod } from '@dfinity/agent';

export interface _SERVICE {
  'getD' : ActorMethod<[], undefined>,
  'test' : ActorMethod<[], boolean>,
  'testArray' : ActorMethod<[], undefined>,
  'testIterator' : ActorMethod<[], undefined>,
  'text_to_blob' : ActorMethod<[string], Uint8Array>,
}
