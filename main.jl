#!/bin/julia
using Random

num = 50; inc = 2
arr = 1:inc:inc*num
key = ["temp", "press", "time", "alt", "vel", "acc"]
val = Dict(
	"temp" => [sind(i) for i in arr],
	"press" => [cosd(i) for i in arr],
	"time" => [(i+1)/2 for i in arr],
	"alt" => [i*2 for i in arr],
	"vel" => [100-i for i in arr],
	"acc" => [100-i^2 for i in arr]
)

# println(val["temp"][2])
# exit()

open("test.txt", "w") do file
	for i in 1:length(arr)
		for k in shuffle!(key)
			println(val[k])
			# write(file, "$k,$val[k][i]")
			# if (k == "temp")
			# 	write(file, "\nHELLO\n")
				# write(file, "$randkey[$k]\n")
			# end
		end
		write(file, "\n")
	end
	# for i in key
	# 	write(file, "$i\n")
	# end
end


hello = "Hello World in Julia"
println(hello)


