class Exception
  unless method_defined?(:cause)
    attr_reader :cause

    alias old_initialize initialize

    def initialize(*a)
      @cause = $!
      old_initialize(*a)
    end
  end
end
