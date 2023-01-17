import type { Principal } from '@dfinity/principal';
import type { ActorMethod } from '@dfinity/agent';

export interface _SERVICE {
  'conditionalRep' : ActorMethod<[], bigint>,
  'findmax' : ActorMethod<[number, number], number>,
  'findmin' : ActorMethod<[number, number], number>,
  'letsLoop' : ActorMethod<[bigint], bigint>,
  'petName' : ActorMethod<[], [] | [string]>,
  'say' : ActorMethod<[boolean], boolean>,
  'set' : ActorMethod<[bigint], string>,
}
