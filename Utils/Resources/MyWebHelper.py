import os
import sys

sys.path.append(os.path.join(os.path.dirname(__file__), '..'))
from selenium import webdriver
from selenium.common.exceptions import WebDriverException, TimeoutException
from selenium.webdriver.common.by import By
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.remote.webelement import WebElement
from selenium.webdriver.support import expected_conditions
from selenium.webdriver.support.wait import WebDriverWait
from selenium.webdriver import ActionChains
from selenium.webdriver.firefox.options import Options
from collections import namedtuple
import logging

Selector = namedtuple('Selector', 'By value')


class MyWebHelper:
    def __init__(self):
        self.driver = None
        self.timeout = 30

    def open_custom_browser(self, url, browser):
        options = Options()
        if browser == "chrome":
            options.binary_location = r'C:\Program Files (x86)\Google\Chrome\Application\chrome.exe'
            self.driver = webdriver.Chrome(executable_path=r'D:\Robot_Selenium_FW\Utils\Drivers\chromedriver.exe')
        elif browser == "firefox":
            options.binary_location = r'C:\Program Files\Mozilla Firefox\firefox.exe'
            self.driver = webdriver.Firefox(executable_path=r'D:\Robot_Selenium_FW\Utils\Drivers\geckodriver.exe',
                                            options=options)
        self.driver.get(url)

    def quit_browser(self):
        self.driver.quit()


