class Graph
  attr_reader :v, :g, :adj
  def initialize(v)
    @v = v
    @e = 0
    @adj = {} 
    (0..@v).to_a.each { |x| @adj[x] = [] }
  end
  def add_edge(v, w)
    return false if has_path(v, w) || has_path(w, v)
    @adj[v] << w
    @adj[w] << v
    @e = @e+1
  end  
  def has_path(v, w)
    @adj[v].include?(w)
  end 
end 



