class HanoiTower
  def move(n, source, target, auxiliary)
    if n == 1
      puts "Move disk 1 from #{source} to #{target}"
      return
    end

    move(n - 1, source, auxiliary, target)
    puts "Move disk #{n} from #{source} to #{target}"
    move(n - 1, auxiliary, target, source)
  end
end
