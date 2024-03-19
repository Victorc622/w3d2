class Card
  def initialize(face_value, face_up)
    @face_value = face_value
    @face_up = face_up
  end

  def face_value
    @face_value
  end

  def face_up
    @face_up
  end

  def hide
    return " "
  end

  def reveal
    @face_value
  end
  
#   def display_card
#     if self.face_up
#         self.reveal
#     else
#         self.hide
#     end
#   end

#   def ==(card2)
#     @face_value == card2.face_value
#   end
end