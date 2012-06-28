class Round < ActiveRecord::Base
  def score (places, num_couples, num_judges)
    places = places
    ncouples = num_couples
    njudges = num_judges
    
    nvotes = Array.new(ncouples,0)
    winner = Array.new(ncouples,0)
    savecount = Array.new(ncouples,0)
    final = Array.new(ncouples,0)
    
    for iprize in 1..ncouples
       
      for icouple in 1..ncouples 
        nvotes[icouple] = savecount[icouple]
        for ijudges in 1..ncouples
          if places[icouple,ijudge] = iprize
            nvotes[icouple] = nvotes[icouple] + 1
          end
        end 
      end
      
      maxvotes = 0
      for icouple in 1..ncouples
        if nvotes[icouple] > maxvotes
          maxvotes = nvotes[icouple]
          prize[iprize] = icouple
        end
      end
      tie = false
      for icouple in 1..ncouples
        if nvotes[icouple] == maxvotes && prize[iprize] != icouple
          tie=true
        end
      end
      if tie
        for icouple in 1..ncouples
          sum[icouple] = 0
          for ijudge in 1..njudges
            sum[icouple] = sum[icouple] + places[icouple,ijudge]
          end
        end
        
        maxsum = 0
        for icouple in 1..ncouples
          if sum[icouple] > maxsum
            maxsum = sum[icouple]
            winner[iprize] = icouple
          end
        end
      end
      
      for ijudge in 1..njudges
        place[winner[iprize], ijudge] = 0
      end
      final[iprize] = winner[iprize]
    end 
    return final
  end  #def score
end
