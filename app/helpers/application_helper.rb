module ApplicationHelper
  def jquery_date_field(field_name, date_format="yy-mm-dd")
    %Q{
          $(document).ready(function() {
            $('##{field_name}').datepicker({dateFormat: '#{date_format}'});
          });
      }
  end

  def jquery_validate_expense
    %Q{
        $(document).ready(function () {
          $('#new_expense').validate({
          debug: true,
          rules: {
            'expense[expense_date]': {required: true },
            'expense[amount]': {required: true }
          }
          });
        });
      }
  end
end

