*** settings ***
Documentation		Learn how to use robot and selenium.
Library 			SeleniumLibrary

*** Variables ***
${message}        My Message
${urlEx00}            file:///C:/Users/Panupat/Desktop/ep01_material/ep01/ex00.html
${urlEx01}            file:///C:/Users/Panupat/Desktop/ep01_material/ep01/ex01.html 
${urlEx02}            file:///C:/Users/Panupat/Desktop/ep01_material/ep01/ex02.html
${urlEx03}            file:///C:/Users/Panupat/Desktop/ep01_material/ep01/ex03.html
${urlEx04}            file:///C:/Users/Panupat/Desktop/ep01_material/ep01/ex04.html
${urlEx05}            file:///C:/Users/Panupat/Desktop/ep01_material/ep01/ex05.html
${urlEx06}            file:///C:/Users/Panupat/Desktop/ep01_material/ep01/ex06.html
${urlEp01}            file:///C:/Users/Panupat/Desktop/ep01_material/ep01/ep01_small_excercise.html
${browser}        chrome
*** Keywords ***
Say Hello
	Log To Console 			ThisIsSayHello

*** Test cases ***
EX00 Input username and password using id
	Open Browser      ${urlEx00}        ${browser}
	Input Text        id=username-box            Input username using id
	Input Text        id=password-box            Input password using id
	Close Browser
EX01 Input username and password using xpath
	Open Browser      ${urlEx01}        ${browser}
	Input Text        xpath=//input[@v='user']            Input username using xpath
	Input Text        xpath=//input[@v='password']        Input password using xpath
	Close Browser

EX02 Input username and password using parent to make unique
	Open Browser      ${urlEx02}        ${browser}
	Input Text        xpath=//div[@v='username']/input            Input username using parent to make unique
	Input Text        xpath=//div[@v='password']/input            Input password using parent to make unique
	Close Browser
EX03 Input username and password using contains
	Open Browser      ${urlEx03}        ${browser}
	Input Text        xpath=//div[contains(@v,'username')]/input            Input username using contains
	Input Text        xpath=//div[contains(@v,'password')]/input            Input password using contains
	Close Browser
EX04 Input username and password using child to make unique
	Open Browser      ${urlEx04}        ${browser}
	Input Text        xpath=//div[span[@c='Username']]/input            Input username using child to make unique
	Input Text        xpath=//div[span[@c='Password']]/input            Input password using child to make unique
	Close Browser
EX05 Input username and password using text between tag to make unique
	Open Browser      ${urlEx05}        ${browser}
	Input Text        xpath=//div[span[text()='User:']]/input            Input username using text between tag to make unique
	Input Text        xpath=//div[span[text()='Pass:']]/input            Input password using text between tag to make unique
	Close Browser
EX06 Input username and password using and to help make unique
	Open Browser      ${urlEx06}        ${browser}
	Input Text        xpath=//div[@k='abc' and @p='xyz']/input            Input User using and to help make unique
	Input Text        xpath=//div[@k='abc'][2]/input                      Input Password using descendant::para[1]
	Input Text        xpath=//div[@p='xyz'][2]/input                      Input Nickname using descendant::para[1]
	Close Browser