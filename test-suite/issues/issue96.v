Require Import Equations.Equations.

Inductive type: Set :=
  | T_bool: type
  | T_prod: type -> type -> type.

Axiom cheat : 0 < 0.

Equations? transport (t: nat) (T: type): Prop by rec 0 lt :=

  transport t T_bool := True;

  transport t (T_prod U V) :=
    transport t U /\
    transport t V.
Proof. apply cheat. apply cheat. Defined.
