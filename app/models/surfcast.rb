require "wave_model"

class Surfcast < ActiveRecord::Base
  include WaveModel

  belongs_to :station
end
