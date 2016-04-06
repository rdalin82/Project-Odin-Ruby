def dfs(graph, start, marked=Array.new(10))
  if marked[start].nil?
    marked[start] = true 
		puts "for #{start} vertex" 
		graph.adj[start].each do |x|
				puts "connected to #{x}"
			 	dfs(graph, x, marked)
		 end 
  end
	return marked 
end 
