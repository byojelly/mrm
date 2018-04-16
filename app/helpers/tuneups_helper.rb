module TuneupsHelper
  def date_format(tuneup)
    tuneup.strftime("%A, %B %d, %g")
  end
end
