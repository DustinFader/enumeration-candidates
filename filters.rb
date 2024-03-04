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
  candidate[:years_of_experience] >= 2
end
  
def age_18_or_above(candidate)
  candidate[:age] >= 18
end

def github_point_minimum(candidate, minimum)
  candidate[:github_points] >= minimum
end

def code_languages_known(candidate, langs)
  langs.each do |language|
    if candidate[:languages].include? language
      return true
    end
  end
  false
end

def applied_within_time(candidate, days_limit)
  candidate[:date_applied] >= days_limit.days.ago.to_date
end

def qualified_candidates(candidates)
  # filtered = []
  # candidates.each do | candidate |
  #   if (experienced?(candidate) and age_18_or_above(candidate) and github_point_minimum(candidate, 100) and code_languages_known(candidate, ['Python', 'Ruby']) and applied_within_time(candidate, 15)
  #     filtered << candidate
  #   end
  # end
  # filtered
  candidates.select { |candidate| experienced?(candidate) and age_18_or_above(candidate) and github_point_minimum(candidate, 100) and code_languages_known(candidate, ['Python', 'Ruby']) and applied_within_time(candidate, 15) }
end
  
  # More methods will go below

def ordered_by_qualifications(candidates)
  candidates.sort_by {|candidate| [-candidate[:years_of_experience], -candidate[:github_points]]}
end
