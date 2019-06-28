class WeeksController < ApplicationController

  def new_week
    @number += 1
    event(@number)
  end

  def event(week_number)
    case week_number
    when 1
      puts "Charlotte and her family (Laurent, Lucille, and younger siblings Zahra and Emry) arrive as visitors. Cheerful +1"
    when 2
      puts "Duchess Julianna arrives at the palace to teach you magic. Choose: "
    when 3
      puts "Elodie and Charlotte are attacked by a milk viper while in the Royal Gardens. Choices depend on whether Julianna is present or not: "
    when 4
      puts "If Charlotte was bitten during Week 3. Test: Poison ≥40"
    when 5
      puts "Alice delivers you a gift from Talarist, Duke of Sedna. Test: Foreign Intelligence ≥10 or Foreign Affairs ≥40"
    end
  end
end
