run_all_in_parallel:
	make -j test_chrome_registration test_chrome_search test_chrome_chart

test_firefox_registration:
	robot --variable ROBOT_BROWSER:firefox Tests\UI\Registration\Registration_positive.robot

test_firefox_search:
	robot --variable ROBOT_BROWSER:firefox Tests\UI\Search\Search_pozitive.robot

test_firefox_chart:
	robot --variable ROBOT_BROWSER:firefox Tests\UI\Shopping\Chart_pozitive.robot

test_chrome_registration:
	robot --variable ROBOT_BROWSER:chrome Tests\UI\Registration\Registration_positive.robot

test_chrome_search:
	robot --variable ROBOT_BROWSER:chrome Tests\UI\Search\Search_pozitive.robot

test_chrome_chart:
	robot --variable ROBOT_BROWSER:chrome Tests\UI\Shopping\Chart_pozitive.robot
