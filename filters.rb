# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program

def find(id)
  @candidates.each do | candidate |
    if candidate[:id] == id
      return candidate
    end
  end
  nil
end

def experienced?(candidate)
  if candidate[:years_of_experience] >= 2
    return true
  end
  false
end
  
def qualified_candidates(candidates)
  # if 
end
  
  # More methods will go below

def ordered_by_qualifications(candidates)

end