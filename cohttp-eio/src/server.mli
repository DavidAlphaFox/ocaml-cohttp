include Cohttp.Server.S with module IO = Io.IO and type body = Body.t

val run :
  ?max_connections:int ->
  ?additional_domains:#Eio__Domain_manager.t * int ->
  ?stop:'a Eio.Promise.t ->
  ?on_error:(exn -> unit) ->
  #Eio.Net.listening_socket ->
  t ->
  'a
