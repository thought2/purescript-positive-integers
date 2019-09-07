{ name =
    "positive-integers-test"
, dependencies =
    [ "effect", "console", "psci-support", "maybe", "test-unit" ]
, packages =
    ./../packages.dhall
, sources =
    [ "../src/**/*.purs", "./src/**/*.purs" ]
}