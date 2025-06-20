# LibTDJSON.jl

Wrapper for TDLib’s C JSON [interface](https://core.telegram.org/tdlib/docs/td__json__client_8h.html) for building Telegram clients in Julia.

## Installation

If you haven't installed our [local registry](https://github.com/bhftbootcamp/Green) yet, do that first:

```
] registry add https://github.com//Green.git
```

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
