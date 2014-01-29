class LicensePage
    include PageObject

    direct_url BASE_URL + "groundwork-administration/licenseview"

    text_field :license, :name => /licform:keyTxt/
    #button :applylicense, :name => /licform:genCmdBtn/
    button :applylicense, :value => /Validate License Key/
end
