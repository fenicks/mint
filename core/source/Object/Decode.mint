/* Functions for decoding specific types from an `Object`. */
module Object.Decode {
  /* Decodes an field from an object using the given decoder. */
  field (
    key : String,
    decoder : Function(Object, Result(Object.Error, a)),
    input : Object
  ) : Result(Object.Error, a) {
    `Decoder.field(#{key}, #{decoder})(#{input})`
  }

  /* Decodes the object as a `String` */
  string (input : Object) : Result(Object.Error, String) {
    `Decoder.string(#{input})`
  }

  /* Decodes the object as a `Time` */
  time (input : Object) : Result(Object.Error, Time) {
    `Decoder.time(#{input})`
  }

  /* Decodes the object as a `Number` */
  number (input : Object) : Result(Object.Error, Number) {
    `Decoder.number(#{input})`
  }

  /* Decodes the object as a `Bool` */
  boolean (input : Object) : Result(Object.Error, Bool) {
    `Decoder.boolean(#{input})`
  }

  /* Decodes the object as a `Array` using the given decoder. */
  array (
    decoder : Function(Object, Result(Object.Error, a)),
    input : Object
  ) : Result(Object.Error, Array(a)) {
    `Decoder.array(#{decoder})(#{input})`
  }

  /* Decodes the object as a `Maybe(a)` using the given decoder. */
  maybe (
    decoder : Function(Object, Result(Object.Error, a)),
    input : Object
  ) : Result(Object.Error, Maybe(a)) {
    `Decoder.maybe(#{decoder})(#{input})`
  }
}
