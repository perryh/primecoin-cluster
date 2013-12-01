output = %x(free -m)
free_memory = output.split(" ")[16].to_i - 500
#free_memory = 100
#`memtester #{free_memory}M`

#IO.popen("memtester #{free_memory}M") { |io|
#  while (line = io.gets) do
#    puts line
#  end
#}

exec("memtester #{free_memory}M")
