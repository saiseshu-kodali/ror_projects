class PostMan < ApplicationMailer
  default from: "from@example.com"

  def admin_alert(actor)
      @id = actor.id
      @name=actor.name
      mail(:to=>"saiseshu.sai8@gmail.com",:subject=>"ALERT : New book added")
      #attachments['filename.jpg'] = File.read('/path/to/filename.jpg')
  end
end
