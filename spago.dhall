{ name =
    "positive-integers"
, dependencies =
    [ "effect", "console", "psci-support", "maybe", "generics-rep" ]
, packages =
    ./packages.dhall
, sources =
    [ "src/**/*.purs" ]
}