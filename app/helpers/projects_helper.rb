module ProjectsHelper
  def format_pledging_ends_on(project)
    if project.expired?
      # Ended
      content_tag(:strong, "All Done!")
    else
      # Hasn't ended yet
      distance_of_time_in_words(Time.now, project.pledging_ends_on).capitalize + " remaining"
    end
  end
end
