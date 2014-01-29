class RestPage
    include PageObject
	
	link :restuser, :text => "test user"

    #link :edit_profile, :text => "Edit profile"
    text_field :firstname, :id => "firstName"
    text_field :lastname, :id => "lastName"
    link :submit, :text => "Save"
	link :ok, :text => "OK"
	link :close, :text => "Close"
end
