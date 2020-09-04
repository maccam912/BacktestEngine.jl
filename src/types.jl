using Dates

struct Price
    pipsize::Rational{Int64}
    pips::Int64
end

struct Tick
    time::DateTime
    ask::Price
    bid::Price
    volume::Int64
end

struct Position
    symbol::String
    costbasis::Float64
    size::Int64
end

struct Account
    cash::Price
    positions::Set{Position}
end

struct Indicator
    inputs::Vector{Union{Float64,Nothing}}
    input::String
    value::Function
end

struct Engine
    acct::Account
    ts::Vector{Tick}
    index::Int64
    indicators::Dict{String,Indicator}
end