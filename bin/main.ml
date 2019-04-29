open Shexp_process

let create =
    call [ "opam"; "switch"; "create"; "./switch"; "4.07.1" ]

let run =
    call [ "opam"; "exec"; "--switch=./switch"; "--set-switch"; "--";
           "opam"; "install"; "dune" ]

let () =
    Logged.eval create;
    Logged.eval run
