module Locomotive
  class ApiKeyInput < SimpleForm::Inputs::Base

    def input(wrapper_options)
      api_key_html + regenerate_button
    end

    def api_key_html
      api_key = object.api_key || I18n.t('locomotive.api_key.none')
      template.content_tag :code, api_key
    end

    def regenerate_button
      url = options[:url]
      template.content_tag :button, I18n.t('locomotive.api_key.button'),
        class:  'btn btn-default btn-primary btn-sm',
        data:   {
          url:      url,
          confirm:  I18n.t('locomotive.messages.confirm')
        }
    end

  end
end
