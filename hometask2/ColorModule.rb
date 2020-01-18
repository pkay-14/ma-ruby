module ColorOp
  ColourSample = {:subtract => 31, :add => 32, :multiply => 33,
                  :divide => 34}

  def color(receive_col, text)
       "\e[#{ColourSample[receive_col]}m#{text}\e[0m"
    end
end