require 'rails_helper'

RSpec.describe 'StaticPages', type: :system do
  describe 'トップページ' do
    context 'ページ全体' do
      before do
        visit root_path
      end

      it 'Cafe Logの文字列が存在することを確認' do
        expect(page).to have_content 'Cafe Diary'
      end
    end
  end

  describe 'ヘルプページ' do
    before do
      visit about_path
    end

    it 'Cafe Logとは？の文字列が存在することを確認' do
      expect(page).to have_content 'Cafe Diaryとは？'
    end
  end

  describe '利用規約ページ' do
    before do
      visit use_of_terms_path
    end

    it '利用規約の文字列が存在することを確認' do
      expect(page).to have_content '利用規約'
    end
  end
end
