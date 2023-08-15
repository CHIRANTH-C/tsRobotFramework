# from constants.data.filter_data_set import month , date , year
# from library.search_filter import month , date
# selected_month = str(month)
# selected_date = str(date)
# selected_year = str(year)

# Xpaths for search component
search="//input[@type='search']"
search_n="//input[@placeholder='Start typing to search...']"
empty_msg="//p[contains(text(),'SORRY! YOUR SEARCH RESULTS CAME UP EMPTY')]"

# Xpaths for date filter component
from_date="//input[@id='fromDate']/following-sibling::input"
to_date="//input[@id='toDate']/following-sibling::input"
# month_drop_down="//select[@class='flatpickr-monthDropdown-months']"
month_drop_down="(//select[@class='flatpickr-monthDropdown-months'])[{}]"
#month_drop_down_selection="//select[@class='flatpickr-monthDropdown-months']/child::option[contains(text(),'{}')]"
month_drop_down_selection="(//select[@class='flatpickr-monthDropdown-months']/child::option[contains(text(),'{}')])[{}]"
# txt_input_year="//input[@class='numInput cur-year']"
txt_input_year="(//input[@class='numInput cur-year'])[{}]"
#select_date="//span[@class='flatpickr-day today'|@class='flatpickr-day' and text()='{}']"
select_date_1="(//span[@class='flatpickr-day today' and text()='{}'])[{}]"
select_date_2="(//span[@class='flatpickr-day' and text()='{}'])[{}]"


# ts_name_row="//div[text()='Chiranth As Tech 4']"
# ts_date_row="//div[text()='07-08-2023']"

# Xpaths for ts list
ts_name_row="//div[text()='{}']"
ts_date_row="//div[text()='{}']"
edit_icon="//span[@class='icon-edit']"

# Xpaths for technician 
ts_tech_drop_down="//button[@type='button']//child::span[contains(text(),'All')]"
btn_clear_all="//button[contains(text(),'Clear All')]"
txt_input_search_tech="//input[@type='search' and @placeholder='Search']"
check_box_select="//label[text()='{}']"
btn_apply="//button[contains(text(),'Apply')]"

txt_edit_timesheet="//div[contains(text(),'Edit Timesheet')]"

# # Xpaths for adding activity
# btn_add_new_activity="//button[@id='addNew']"
# select_activity_drop_down="//select[@id='ActivityDropdown']"
# select_specific_activity="//select[@id='ActivityDropdown']//child::option[text()='Overtime']"
# activity_start_time="//input[@id='activityStartTime']"
# activity_end_time="//input[@id='activityEndTime']"

# Xpaths for adding activity
btn_add_new_activity="//button[@id='addNew']"
select_activity_drop_down="//select[@id='ActivityDropdown']"
select_specific_activity="//select[@id='ActivityDropdown']//child::option[text()='{}']"
activity_start_time="//input[@id='activityStartTime']"
activity_end_time="//input[@id='activityEndTime']"


# txt_input_hrs="//input[@class='numInput flatpickr-hour' and @aria-label='Hour']"
# txt_input_mins="//input[@class='numInput flatpickr-minute' and @aria-label='Minute']"
# toggle_am_pm="//span[@title='Click to toggle' and contains(text(),'PM')]"

txt_input_hrs="(//input[@class='numInput flatpickr-hour' and @aria-label='Hour'])[{}]"
txt_input_mins="(//input[@class='numInput flatpickr-minute' and @aria-label='Minute'])[{}]"
toggle_am_pm="(//span[@title='Click to toggle'])[{}]"

btn_save="//button[@id='Submit']"
btn_continue="//button[contains(text(),'Yes')]"

# activity_entry="//div[@class='tabledata styles_default__3REJC' and contains(text(),'Overtime')]"
activity_entry="//div[@class='tabledata styles_default__3REJC' and contains(text(),'{}')]"


# Xpaths for task Id Drops Downs
task_id_drop_down="//select[@id='taskDropdown']"
select_specific_task_id="//option[@value='{}']"

# Xpaths for pop ups
time_range_conflict_pop_up="//p[text()='Time range conflicts with Overtime']"

inside_shift_range_conflict_pop_up="//p[text()='Overtime is inside Shift hours']"

long_duration_than_task_pop_up = "//p[text()='Hours are longer than task duration']"

btn_override="//button[contains(text(),'Override')]"

# Xpaths for time sheet pages
nav_pending_review_page="//a[contains(text(),'Pending Review')]"
#nav_pending_review_page="//a[contains(text(),'{}')]"
nav_close_page="//a[contains(text(),'Closed')]"

# Xpaths for approving the time sheet
approve_reject_drop_down="//span[contains(text(),'Approve/Reject')]"
approve_reject_drop_down_approve="//div[contains(text(),'Approve')]"
btn_approve_pending="//button[@id='pendingApproved']"

# Xpaths for rejecting the time sheet
approve_reject_drop_down_reject="//div[contains(text(),'Reject')]"
txt_area_reject_reason="//textarea[@id='activityComments']"
btn_reject_pending="//button[@id='saveReject']"