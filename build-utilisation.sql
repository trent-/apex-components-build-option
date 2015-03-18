select
  workspace
, application_id
, info
, component_type
, build_option
from (

  select workspace, application_id, 'Display name: ' || display_name info, 'UI Type' component_type,  build_option
  from apex_appl_user_interfaces
  union all
  select workspace, application_id, 'Entry label: ' || entry_label || '; For page: ' || defined_for_page info, 'Breadcrumb entries' component_type, build_option
  from apex_application_bc_entries
  union all
  select workspace, application_id, 'Computation item: ' || computation_item info, 'Application computations' component_type, build_option
  from apex_application_computations
  union all
  select workspace, application_id, 'Item name: ' || item_name info, 'Application items' component_type, build_option
  from apex_application_items
  union all
  select  workspace, application_id, 'List name: ' || list_name info, 'Lists' component_type, build_option
  from apex_application_lists
  union all
  select workspace, application_id, 'Entry text: ' || entry_text || '; Parent entry:' || parent_entry_text info, 'List entries' component_type, build_option
  from apex_application_list_entries
  union all
  select workspace, application_id, 'LOV Name: ' || list_of_values_name || '; Display value: ' || display_value info, 'Static LOV entries' component_type, build_option
  from apex_application_lov_entries
  union all
  select workspace, application_id, 'Label: ' || icon_subtext info, 'Nav bar entries' component_type, build_option
  from apex_application_nav_bar
  union all
  select workspace, application_id, 'Page ID: ' || page_id info, 'Page' component_type, build_option
  from apex_application_pages
  union all
  select workspace, application_id, 'Page ID: ' || page_id || '; Branch point: ' || branch_point || '; Branch sequence: ' || process_sequence || '; Branch name: ' || branch_name info, 'Page branch' component_type, build_option
  from apex_application_page_branches
  union all
  select workspace, application_id, 'Page ID: ' || page_id || '; Item: ' || item_name || '; Computation point: ' || computation_point info, 'Page computation' component_type, build_option 
  from apex_application_page_comp
  union all
  select workspace, application_id, 'Page ID: ' || page_id || '; Dynamic action name: ' || dynamic_action_name info, 'Dynamic action' component_type, build_option
  from apex_application_page_da
  union all
  select workspace, application_id, 'Page ID: ' || page_id || '; Process name: ' || process_name || '; Process point: ' || process_point_code info, 'Page process' component_type, build_option
  from apex_application_page_proc
  union all
  select workspace, application_id, 'Page ID: ' || page_id || '; Region name: ' || region_name info, 'Page region' component_type, build_option
  from apex_application_page_regions
  union all
  select workspace, application_id, 'Page ID: ' || page_id || '; Region name: ' ||  region_name || '; Series name: ' || series_name info, 'Flash chart series' component_type , build_option
  from apex_application_page_flash5_S
  union all
  select workspace, application_id, 'Page ID: ' || page_id || '; Validation name: ' || validation_name info, 'Page validation' component_type, build_option
  from apex_application_page_val
  union all
  select workspace, application_id, 'Page ID: ' || page_id || '; Button name: ' ||  button_name info, 'Page button' component_type, build_option
  from apex_application_page_buttons
  union all
  select workspace, application_id, 'Page ID: ' || page_id || '; Item name' || item_name info, 'Page item' component_type, build_option
  from apex_application_page_items
  union all
  select workspace, application_id, 'Tab set name: ' || tab_set || '; Tab name: ' ||  tab_name info, 'Parent tabs' component_type, build_option
  from apex_application_parent_tabs
  union all
  select workspace, application_id, 'Process name: ' || process_name info, 'Application process' component_Type, build_option
  from apex_application_processes
  union all
  select workspace, application_id, 'Shortcut name: ' || shortcut_name info, 'Application shortcut' component_type, build_option
  from apex_application_shortcuts
  union all
  select workspace, application_id, 'Tab set: ' || tab_set || '; Tab name: ' || tab_name || '; Tab label: ' || tab_label info, 'Tabs' component_type , build_option
  from apex_application_tabs
  union all
  select workspace, application_id, 'Page Id: ' || page_id || '; Combined file URL: ' || combined_file_url info, 'Concatenated Files' component_type, build_option
  from APEX_APPL_CONCATENATED_FILES
)
