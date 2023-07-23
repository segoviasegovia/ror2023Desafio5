require "application_system_test_case"

class OfertaTest < ApplicationSystemTestCase
  setup do
    @ofertum = oferta(:one)
  end

  test "visiting the index" do
    visit oferta_url
    assert_selector "h1", text: "Oferta"
  end

  test "should create ofertum" do
    visit oferta_url
    click_on "New ofertum"

    fill_in "Description", with: @ofertum.description
    fill_in "Salario", with: @ofertum.salario
    fill_in "Titulo", with: @ofertum.titulo
    click_on "Create Ofertum"

    assert_text "Ofertum was successfully created"
    click_on "Back"
  end

  test "should update Ofertum" do
    visit ofertum_url(@ofertum)
    click_on "Edit this ofertum", match: :first

    fill_in "Description", with: @ofertum.description
    fill_in "Salario", with: @ofertum.salario
    fill_in "Titulo", with: @ofertum.titulo
    click_on "Update Ofertum"

    assert_text "Ofertum was successfully updated"
    click_on "Back"
  end

  test "should destroy Ofertum" do
    visit ofertum_url(@ofertum)
    click_on "Destroy this ofertum", match: :first

    assert_text "Ofertum was successfully destroyed"
  end
end
