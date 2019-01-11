signature SEMIGROUP =
  sig
    type t
    val assoc : t -> t -> t
  end

signature MONOID = 
  sig
    type t
    val identity : t
    val assoc    : t -> t -> t
  end

signature FUNCTOR =
  sig
    type 'a f 
    val fmap    : ('a -> 'b) -> 'a f -> 'b f
    val replace : 'a -> 'b f -> 'a f
  end

signature APPLICATIVE =
  sig
    type 'a f
    val pure      : 'a -> 'a f
    val apply     : ('a -> 'b) f -> 'a f -> 'b f
    val coapply   : 'a f -> ('a -> 'b) f -> 'b f
    val discard   : a' f -> 'b f -> 'b f
    val codiscard : a' f -> 'b f -> 'a f
    val lift      : ('a -> 'b) -> 'a f -> 'b f
  end

signature MONAD =
  sig
    type 'a m
    val bind    : 'a m -> ('a -> 'b m) -> 'b m
    val discard : 'a m -> 'b m -> 'b m
    val return  : 'a -> 'a m
  end
