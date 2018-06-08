require 'rubygems'
require 'selenium-webdriver'

def jama_test

  driver = Selenium::WebDriver.for :chrome
  driver.navigate.to "https://candidate.jamacloud.com/login.req"

  element = driver.find_element(:id, 'j_username').send_keys('candidate-cbedd')
  element = driver.find_element(:id, 'j_password').send_keys('General04!')

  element = driver.find_element(:id, 'loginButton').click
  element = driver.find_element(:xpath, '//*[@id="j-header-tab-ct"]/li[2]/a').click

  element = driver.find_element(:id, 'js-add-comment-field').send_keys('Looked at my kingdom, I was finally there to sit on my throne as the Prince of Bel-Air')
  element = driver.find_element(:xpath, '//*[@id="js-add-comment-field-actions"]/button[1]').click
  element = driver.find_element(:xpath, '//*[@id="js-comment-294"]/div[2]/div[2]/div[1]').text.include? "Looked at my kingdom, I was finally there to sit on my throne as the Prince of Bel-Air"

  driver.quit
end
