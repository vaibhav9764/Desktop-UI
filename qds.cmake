### This file is automatically generated by Qt Design Studio.
### Do not change

add_subdirectory(Task_3Content)
add_subdirectory(Task_3)
add_subdirectory(App)

target_link_libraries(${CMAKE_PROJECT_NAME} PRIVATE
	Task_3Contentplugin
	Task_3plugin)