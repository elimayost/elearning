module PagesHelper

  def download_expired? time
    true if Time.now > time + 1.hour
  end

end

