#= require ../shared/form_view

Locomotive.Views.CurrentSite ||= {}

class Locomotive.Views.CurrentSite.EditView extends Locomotive.Views.Shared.FormView

  el: '.main'

  # el: '#content'

  # events:
  #   'submit': 'save'

  # initialize: ->
  #   @model = new Locomotive.Models.CurrentSite(@options.site)

  #   Backbone.ModelBinding.bind @, checkbox: 'class'

  # render: ->
  #   super()

  #   @add_toggle_mode_for_locales()

  #   @make_locales_sortable()

  #   @render_domains()

  #   @render_memberships()

  #   @enable_liquid_editing()

  #   @enable_checkboxes()

  # add_toggle_mode_for_locales: ->
  #   @$('#site_locales_input .list input[type=checkbox]').bind 'change', (event) ->
  #     el = $(event.target)
  #     if el.is(':checked')
  #       el.closest('.entry').addClass('selected')
  #     else
  #       el.closest('.entry').removeClass('selected')

  # make_locales_sortable: ->
  #   @sortable_locales_list = @$('#site_locales_input .list').sortable
  #     items:      '.entry'
  #     tolerance:  'pointer'
  #     update: =>
  #       list = _.map @$('#site_locales_input .list input:checked'), (el) => $(el).val()
  #       @model.set locales: list

  # render_domains: ->
  #   @domains_view = new Locomotive.Views.Sites.DomainsView model: @model, errors: @options.errors

  #   @$('#site_domains_input label').after(@domains_view.render().el)

  # render_memberships: ->
  #   @memberships_view = new Locomotive.Views.Sites.MembershipsView model: @model

  #   @$('#site_memberships_input').append(@memberships_view.render().el)

  # enable_liquid_editing: ->
  #   if($('#site_robots_txt').length)
  #     input = @$('#site_robots_txt')
  #     @editor = CodeMirror.fromTextArea input.get()[0],
  #       mode:             'liquid'
  #       autoMatchParens:  false
  #       lineNumbers:      false
  #       passDelay:        50
  #       tabMode:          'shift'
  #       theme:            'default'
  #     @editor.on 'change', (editor, change) => @model.set(robots_txt: editor.getValue())

  # enable_checkboxes: ->
  #   @_enable_checkbox('prefix_default_locale')

  # save: (event) ->
  #   # if @model.includes_domain(window.location.host)
  #   if !@model.get('subdomain') || @model.includes_domain(window.location.host)
  #     @save_in_ajax(event)

  # save: (event) ->
  #   # if @model.includes_domain(window.location.host)
  #   if !@model.get('subdomain') || @model.includes_domain(window.location.host)
  #     @save_in_ajax(event)

  # show_error: (attribute, message, html) ->
  #   if attribute == 'domains'
  #     @domains_view.show_error(message)
  #   else
  #     super

  # after_inputs_fold: ->
  #   @editor.refresh()

  # remove: ->
  #   @domains_view.remove()
  #   @memberships_view.remove()
  #   super

