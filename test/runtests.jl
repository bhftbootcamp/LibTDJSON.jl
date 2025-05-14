# runtests

using Test
using LibTDJSON

@testset "LibTDJSON Basic Functionality" begin
    @testset "Client ID creation" begin
        client_id = td_create_client_id()
        @test client_id == 1
    end

    @testset "Simple td_execute (getOption: version)" begin
        request = raw"""{"@type":"getOption","name":"version"}"""
        response = unsafe_string(td_execute(request))
        m = match(r"\"value\":\"([\d\.]+)", response)
        @test !isnothing(m)
        @test VersionNumber(m[1]) isa VersionNumber
    end
end
