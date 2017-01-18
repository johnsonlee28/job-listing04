module JobsHelper
  def render_job_status(job)
    if job.is_hidden
      content_tag(:span, "",:class => "fa fa-lock")
    else
      content_tag(:span,"", :class => "fa fa-globe")
    end
  end

  def render_highlight_content(job,query_string)
    excerpt_cont = excerpt(job.title, query_string, radius: 500)
    highlight(excerpt_cont,query_string)
  end

  def time_ago_in_words(from_time, options = {})
   distance_of_time_in_words(from_time, Time.now, options)
  end

end
