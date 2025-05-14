# LibTDJSON.jl

[![Stable](https://img.shields.io/badge/docs-stable-blue.svg)](https://bhftbootcamp.github.io/LibTDJSON.jl/stable/)
[![Dev](https://img.shields.io/badge/docs-dev-blue.svg)](https://bhftbootcamp.github.io/LibTDJSON.jl/dev/)
[![Build Status](https://github.com/bhftbootcamp/LibTDJSON.jl/actions/workflows/CI.yml/badge.svg?branch=master)](https://github.com/bhftbootcamp/LibTDJSON.jl/actions/workflows/CI.yml?query=branch%3Amaster)
[![Coverage](https://codecov.io/gh/bhftbootcamp/LibTDJSON.jl/branch/master/graph/badge.svg)](https://codecov.io/gh/bhftbootcamp/LibTDJSON.jl)
[![Registry](https://img.shields.io/badge/registry-General-4063d8)](https://github.com/JuliaRegistries/General)

Wrapper for TDLib’s C JSON [interface](https://core.telegram.org/tdlib/docs/td__json__client_8h.html) for building Telegram clients in Julia.

## Installation

To install LibTDJSON, simply use the Julia package manager:

```julia
] add LibTDJSON
```

## Usage

General pattern of usage

```julia
using LibTDJSON

const WAIT_TIMEOUT = 10.0

client_id = td_create_client_id()

while true
    event = td_receive(WAIT_TIMEOUT)
    if event != C_NULL
        # parse the result as a JSON object
    end
end
```

## Useful Links

- [TDLib](https://github.com/tdlib/td) – Official library repository.
- [TDLib_jll.jl](https://github.com/JuliaBinaryWrappers/TDLib_jll.jl) – Julia wrapper for TDLib.

## Contributing

Contributions to LibTDJSON are welcome! If you encounter a bug, have a feature request, or would like to contribute code, please open an issue or a pull request on GitHub.
