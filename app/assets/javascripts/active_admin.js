//= require active_admin/base
$(document).ready(function(){
  $('#article_category').change(function(){
    $.ajax({
      url:"articles/get_subcategories",
      data: 'category_id=' + this.value,
      dataType: 'script',
      method: 'post'
    }); 
  })
    
});

