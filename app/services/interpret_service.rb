class InterpretService
  def self.call(action, params)
    case action
    when 'list', 'search', 'search_by_hashtag'
      FaqModule::ListService.new(params, action).call
    when 'create'
      FaqModule::CreateService.new(params).call
    when 'remove'
      FaqModule::RemoveService.new(params).call
    when 'help'
      HelpService.call
    when 'translate'
      TranslateService.new(params).call
    else
      'Não compreendi seu desejo'
    end
  end
end