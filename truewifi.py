#!/usr/bin/env python3 
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC
from selenium.common.exceptions import NoSuchElementException
import time

#website_link="http://detectportal.firefox.com/success.txt"
website_link="http://nmcheck.gnome.org/"
#website_link="https://1.1.1.1/login.html"

username="bbbbbbbb"
password="bbbbbbbb"

element_for_username="username"
element_for_password="password"
element_for_submit="btnsubmit"

element_for_agreement="agreed"

browser = webdriver.Firefox()
browser.get((website_link))
wait = WebDriverWait(browser, 5)

try:
    time.sleep(3)
    username_element = browser.find_element_by_name(element_for_username)
    username_element.send_keys(username)
    password_element = browser.find_element_by_name(element_for_password)
    password_element.send_keys(password)
    signInButton = browser.find_element_by_id(element_for_submit)
    signInButton.click()
    time.sleep(3)
    browser.quit()
except:
    print("Some error occured :(")
    time.sleep(1)
    browser.quit()
