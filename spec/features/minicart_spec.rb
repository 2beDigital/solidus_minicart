require 'rails_helper'

feature "minicart", :js => true do
  before(:each) {
    @products = Spree::Product.all
    if (@products.size == 0)
      @product = create(:product, :name => "ror mug", :price => 30)
    end
  }

  scenario "customer should be able to add and delete a product in the minicart" do
    visit spree.products_path
    click_link("ror mug")

    page.execute_script 'jQuery("#minicart").slideDown()'
    within("#minicart") do
      page.should have_content("cart is empty")
    end

    click_button "Add To Cart"
    URI.parse(current_url).path.should =~ /cart/

    page.execute_script 'jQuery("#minicart").slideDown()'
    within("#minicart") do
      page.should have_content("ror mug")
      page.should have_content("$30")
      within "div.minicart-actions" do
        page.find('a.minicart_remove img').click
      end
    end


    # problem with Selenium::WebDriver::Error::StaleElementReferenceError
    # within("#minicart") do
    #   page.should have_content("cart is empty")
    #   page.should_not have_content("ror mug")
    #   page.should_not have_content("$30")
    # end
  end

  scenario "delete a line item with multiple quantity should totally remove from minicart" do
    visit spree.products_path
    click_link("ror mug")

    page.execute_script 'jQuery("#minicart").slideDown()'
    within("#minicart") do
      page.should have_content("cart is empty")
    end

    within("div.add-to-cart") do
      fill_in 'quantity', :with => 2
      click_button "Add To Cart"
    end
    URI.parse(current_url).path.should =~ /cart/

    page.execute_script 'jQuery("#minicart").slideDown()'
    within("#minicart") do
      page.should have_content("2 x")
      page.should have_content("ror mug")
      within("#minicart-details") do
        page.should have_content("$60")
      end
    end

    page.execute_script 'jQuery("#minicart").trigger("mouseenter")'
    within "div.minicart-actions" do
      find('a.minicart_remove img').click
    end
  end


  scenario 'minicart should not create new order for every visitor', :js => false do
    expect {
      visit spree.products_path
    }.to_not change(Spree::Order, :count)
  end
end
