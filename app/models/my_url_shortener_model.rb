class MyUrlShortenerModel < ActiveRecord::Base

  def get_new_url_id
    self[:id]
  end

  def get_redirect_to_url
    self[:user_url]
  end

end
