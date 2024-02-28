import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
require("semantic-ui-sass")


Rails.start()
Turbolinks.start()
ActiveStorage.start()

$(document).on("turbolinks:load", () => $(".ui.dropdown").dropdown());
$(document).on('turbolinks:load', function() {
    $(document).on('click', '.close.icon', function() {
      $(this).siblings('input').val('');
      $(this).siblings('input')[0].focus();
    });
  });
  
  