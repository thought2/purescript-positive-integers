{ name =
    "positive-integers"
, dependencies =
    [ "effect", "console", "psci-support", "maybe", "generics-rep", "maybe" ]
, packages =
    ./packages.dhall
, sources =
    [ "src/**/*.purs" ]
}