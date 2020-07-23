class User::Index < Trailblazer::Operation

    step :validate
    fail :set_message, fail_fast: true
    step :load_data
    pass :build_user
    fail :set_second_message

    def build_user(ctx, **)
      puts "**"
    end

    def validate(ctx, **)
      true
    end

    def set_message(ctx, **)
      puts "**** set_message"
      ctx[:error] = '888'
    end

    def set_second_message(ctx, **)
      puts '***, set_second_message'
      ctx[:error] = '888ooo'
    end

    def load_data(ctx, **)
      ctx[:users] = User.all
      false
    end
end
