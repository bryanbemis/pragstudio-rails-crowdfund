module ProjectsHelper
  def format_pledging_ends_on(movie)
    if movie.pledging_ends_on > Time.now
      # Hasn't ended yet
      distance_of_time_in_words(Time.now, movie.pledging_ends_on).capitalize + " remaining"
    else
      # Ended
      content_tag(:strong, "All Done!")
    end
  end
end
