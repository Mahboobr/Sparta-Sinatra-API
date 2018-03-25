require_relative "./services/meme_service"

class MemeAPI

  def meme_service
    MemeService.new
  end

end
