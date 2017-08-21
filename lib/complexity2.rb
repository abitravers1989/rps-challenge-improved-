## From

class OldStory
  def tell
    puts "Once upon a time there was a good horse."
    puts "Do you like this horse?"
    if gets.downcase.start_with? "y"
      puts "Do you like it a lot?"
      if gets.downcase.start_with? "y"
        puts "It lived happily ever after"
      else
        puts "It lived an okay life"
      end
    else
      puts "It got sad"
      puts "Forever :("
    end
  end
end

## To

class YesOrNoChoice
  def initialize(prompt:, yes:, no:)
    @prompt = prompt
    @yes = yes
    @no = no
  end

  def tell
    puts @prompt
    choose_path
  end

  def choose_path
    return @yes.tell if YesPrompt.yes?
    @no.tell
  end
end

class Notice
  def initialize(message)
    @message = message
  end

  def tell
    puts @message
  end
end

class YesPrompt
  def self.yes?
    user_input.start_with? "y"
  end

  private

  def self.user_input
    gets.downcase
  end
end

class SecondHorseStory
  STORY = YesOrNoChoice.new(
    prompt: "Do you like it a lot?",
    yes: Notice.new("It lived happily ever after"),
    no: Notice.new("It lived an okay life")
  )

  def self.tell
    STORY.tell
  end
end

class HorseStory
  STORY = YesOrNoChoice.new(
    prompt: "Once upon a time there was a good horse.\nDo you like this horse?",
    yes: SecondHorseStory,
    no: Notice.new("It got sad\nForever :(")
  )

  def self.tell
    STORY.tell
  end
end

# The last two classes here are clearly different. In fact
# they aren't good — there's duplication and you can see
# how the number of classes would grow out of control.

# What we would really do at this point is extract the data
# to a configuration file or a database and write a few
# classes to convert it into the right objects.

# But for the purposes of the exercise, I've not done that :)
