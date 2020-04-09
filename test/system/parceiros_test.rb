require "application_system_test_case"

class ParceirosTest < ApplicationSystemTestCase
  setup do
    @parceiro = parceiros(:one)
  end

  test "visiting the index" do
    visit parceiros_url
    assert_selector "h1", text: "Parceiros"
  end

  test "creating a Parceiro" do
    visit parceiros_url
    click_on "New Parceiro"

    fill_in "Descricao", with: @parceiro.descricao
    fill_in "Imagens", with: @parceiro.imagens
    fill_in "Nome", with: @parceiro.nome
    click_on "Create Parceiro"

    assert_text "Parceiro was successfully created"
    click_on "Back"
  end

  test "updating a Parceiro" do
    visit parceiros_url
    click_on "Edit", match: :first

    fill_in "Descricao", with: @parceiro.descricao
    fill_in "Imagens", with: @parceiro.imagens
    fill_in "Nome", with: @parceiro.nome
    click_on "Update Parceiro"

    assert_text "Parceiro was successfully updated"
    click_on "Back"
  end

  test "destroying a Parceiro" do
    visit parceiros_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Parceiro was successfully destroyed"
  end
end
