require_relative "./limited_action/version"

module LimitedAction
  class << self
    def allow?
      @condition && @condition.call
    end

    def condition!(&condition)
      @condition = condition
    end

    def action!(&block)
      block.call if LimitedAction.allow?
    end
  end
end

def limited_action!(&block)
  LimitedAction.action!(&block)
end
