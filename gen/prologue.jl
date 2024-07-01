@static if Sys.iswindows()
    const libpolars_local = joinpath(@__DIR__, "../c-polars/target/debug/polars.dll")
else
    const libpolars_local = joinpath(@__DIR__, "../c-polars/target/debug/libpolars.so")
end

@static if isfile(libpolars_local)
    const libpolars = libpolars_local
end
