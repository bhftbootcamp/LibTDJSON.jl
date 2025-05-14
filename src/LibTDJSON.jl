module LibTDJSON

using TDLib_jll

export td_create_client_id,
    td_send,
    td_receive,
    td_execute,
    td_set_log_message_callback,
    td_json_client_create,
    td_json_client_send,
    td_json_client_receive,
    td_json_client_execute,
    td_json_client_destroy

function td_create_client_id()
    ccall((:td_create_client_id, libtdjson), Cint, ())
end

function td_send(client_id, request)
    ccall((:td_send, libtdjson), Cvoid, (Cint, Ptr{UInt8}), client_id, request)
end

function td_receive(timeout)
    ccall((:td_receive, libtdjson), Ptr{UInt8}, (Cdouble,), timeout)
end

function td_execute(request)
    ccall((:td_execute, libtdjson), Ptr{UInt8}, (Ptr{UInt8},), request)
end

function td_set_log_message_callback(max_verbosity_level, callback)
    ccall((:td_set_log_message_callback, libtdjson), Cvoid, (Cint, Ptr{Cvoid}), max_verbosity_level, callback)
end

function td_json_client_create()
    ccall((:td_json_client_create, libtdjson), Ptr{Cvoid}, ())
end

function td_json_client_send(client, request)
    ccall((:td_json_client_send, libtdjson), Cvoid, (Ptr{Cvoid}, Ptr{UInt8}), client, request)
end

function td_json_client_receive(client, timeout)
    ccall((:td_json_client_receive, libtdjson), Cstring, (Ptr{Cvoid}, Cdouble), client, timeout)
end

function td_json_client_execute(client, request)
    ccall((:td_json_client_execute, libtdjson), Ptr{UInt8}, (Ptr{Cvoid}, Ptr{UInt8}), client, request)
end

function td_json_client_destroy(client)
    ccall((:td_json_client_destroy, libtdjson), Cvoid, (Ptr{Cvoid},), client)
end

end
