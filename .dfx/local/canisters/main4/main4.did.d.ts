import type { Principal } from '@dfinity/principal';
import type { ActorMethod } from '@dfinity/agent';

export type List = [] | [[bigint, List]];
export interface _SERVICE {
  'test_reverse' : ActorMethod<[], List>,
  'test_unique' : ActorMethod<[], List>,
}
