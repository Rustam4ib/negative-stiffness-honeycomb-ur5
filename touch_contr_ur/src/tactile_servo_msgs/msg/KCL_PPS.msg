# Message with the raw and the processed PPS data

Header header					# stamp
int8 width
int8 height
int8 npads
float64[72] rawdata
KCL_ContactStateStamped[3] contact
