module BacktestEngine

function test()
    return 3
end

#export load_ticks

#include("types.jl")

# function load_ticks(path::String)::Vector{Tick}
#     csv = CSV.read(path, normalizenames=true)
#     asks = csv[:Ask]
#     bids = csv[:Bid]
#     vol = csv[:Volume]
#     last = csv[:Last]
#     d = csv[:Date]
#     t = csv[:Time]

#     ticks = Vector{Tick}(undef, length(asks))
#     for i in 1:length(t)
#         dt = d[i]+t[i]
#         t = Tick(dt, asks[i], bids[i], vol[i])
#         ticks[i] = t
#     end
#     return ticks
# end

end
end