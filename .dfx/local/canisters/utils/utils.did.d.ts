import type { Principal } from '@dfinity/principal';
import type { ActorMethod } from '@dfinity/agent';

export interface _SERVICE {
  'dropped' : ActorMethod<[], Array<bigint>>,
  'remove_even' : ActorMethod<[Array<bigint>], Array<bigint>>,
  'second_maximum' : ActorMethod<[Array<bigint>], bigint>,
}
