# Use this setup block to configure all options available in SimpleForm.
SimpleForm.setup do |config|

  config.custom_inputs_namespaces << 'Locomotive'

  config.boolean_style = :nested

  config.wrapper_mappings = {
    array:  :locomotive_array,
    toggle: :locomotive_toggle
  }

  config.wrappers :locomotive, tag: 'div', class: 'form-group input', error_class: 'has-error',
      defaults: { input_html: { class: 'default_class' } } do |b|

    b.use :label, class: 'control-label'
    b.use :hint,  wrap_with: { tag: 'span', class: 'help-inline' }
    b.use :error, wrap_with: { tag: 'span', class: 'help-inline error-inline' }

    b.wrapper tag: :span, class: 'form-wrapper' do |c|
      c.use :html5
      c.use :min_max
      c.use :maxlength
      c.use :placeholder

      c.optional :pattern
      c.optional :readonly

      c.use :input, class: 'form-control'
    end
  end

  config.wrappers :locomotive_toggle, tag: 'div', class: 'form-group input', error_class: 'has-error',
      defaults: { input_html: { class: 'default_class' } } do |b|

    b.wrapper tag: :div do |h|
      h.use :label, class: 'control-label'
      h.use :hint,  wrap_with: { tag: 'span', class: 'help-inline' }
    end

    b.wrapper tag: :span, class: 'form-wrapper' do |c|
      c.use :html5
      c.optional :readonly
      c.use :input, class: 'form-control'
    end
  end

  config.wrappers :locomotive_array, tag: 'div', class: 'form-group input', error_class: 'has-error',
      defaults: { input_html: { class: 'default_class' } } do |b|

    b.wrapper tag: :header do |h|
      h.wrapper tag: :div, class: 'pull-right' do |l|
        l.use :new_item_link
      end
      h.use :label, class: 'control-label'
      h.use :hint, wrap_with: { tag: 'span', class: 'help-inline' }
    end

    b.wrapper tag: :span, class: 'form-wrapper' do |c|
      c.use :html5
      c.use :min_max
      c.use :maxlength
      c.use :placeholder

      c.optional :pattern
      c.optional :readonly

      c.use :input, class: 'form-control'
    end
  end

end
