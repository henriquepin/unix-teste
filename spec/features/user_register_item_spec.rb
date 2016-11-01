require 'rails_helper'

feature 'user register item' do
  scenario 'succesfully' do
    product = Product.create(name: 'Camiseta',
                             description: 'Hurley')

    color = Color.create(name: 'Amarela')

    size = Size.create(name: 'M')

    item = Item.create(product: product,
                       color: color,
                       size: size,
                       quantity: '15')

    visit 'root_path'

    click_on 'Cadastrar item'

    visit 'new_item_path'

    fill_in 'Produto', with: item.product.name
    fill_in 'Descrição', with: item.product.description
    fill_in 'Cor', with: item.color.name
    fill_in 'Tamanho', with: item.size.name
    fill_in 'Quantidade', with: item.quantity

    clcik_on 'Cadastrar Item'

    expect(page).to have_content(item.product.name)
    expect(page).to have_content(item.product.description)
    expect(page).to have_content(item.color.name)
    expect(page).to have_content(item.size.name)
    expect(page).to have_content(item.quantity)

    end
  end

