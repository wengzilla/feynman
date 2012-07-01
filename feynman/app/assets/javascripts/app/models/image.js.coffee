class App.Image extends Spine.Model
  @configure 'Image', 'image_url', 'width', 'height'
  @extend Spine.Model.Ajax

  @url: => 
    @token = $('.user_meta').data('token')
    @user_id = $('.profile_meta').data('id')

    url = "/api/v1/images.json?token=#{@token}"
    if @user_id? then "#{url}&user_id=#{@user_id}" else url

window.Image = App.Image