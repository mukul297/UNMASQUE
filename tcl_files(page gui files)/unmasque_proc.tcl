#############################################################################
# Generated by PAGE version 5.0.3
#  in conjunction with Tcl version 8.6
#  Mar 21, 2020 10:04:52 AM IST  platform: Windows NT
set vTcl(timestamp) ""


set image_list { \
    image20 "./inp.png" \
    image21 "./from.png" \
    image22 "./min.png" \
    image23 "./where.png" \
    image24 "./gb.png" \
    image25 "./agg.png" \
    image26 "./lim.png" \
    image27 "./op.png" \
    image28 "./proj.png" \
    image29 "./logo.png" \
}
vTcl:create_project_images $image_list   ;# In image.tcl


if {!$vTcl(borrow) && !$vTcl(template)} {

set vTcl(actual_gui_bg) #d9d9d9
set vTcl(actual_gui_fg) #000000
set vTcl(actual_gui_analog) #ececec
set vTcl(actual_gui_menu_analog) #ececec
set vTcl(actual_gui_menu_bg) #d9d9d9
set vTcl(actual_gui_menu_fg) #000000
set vTcl(complement_color) #d9d9d9
set vTcl(analog_color_p) #d9d9d9
set vTcl(analog_color_m) #ececec
set vTcl(active_fg) #000000
set vTcl(actual_gui_menu_active_bg)  #ececec
set vTcl(pr,menufgcolor) #000000
set vTcl(pr,menubgcolor) #d9d9d9
set vTcl(pr,menuanalogcolor) #ececec
set vTcl(pr,treehighlight) firebrick
set vTcl(pr,autoalias) 1
set vTcl(pr,relative_placement) 1
set vTcl(mode) Relative
}




proc vTclWindow.top43 {base} {
    global vTcl
    if {$base == ""} {
        set base .top43
    }
    if {[winfo exists $base]} {
        wm deiconify $base; return
    }
    set top $base
    ###################
    # CREATING WIDGETS
    ###################
    vTcl::widgets::core::toplevel::createCmd $top -class Toplevel \
        -menu "$top.m44" -background $vTcl(actual_gui_bg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black 
    wm focusmodel $top passive
    wm geometry $top 1177x746+254+98
    update
    # set in toplevel.wgt.
    global vTcl
    global img_list
    set vTcl(save,dflt,origin) 0
    wm maxsize $top 1444 881
    wm minsize $top 120 1
    wm overrideredirect $top 0
    wm resizable $top 1 1
    wm deiconify $top
    wm title $top "Hidden Query Extractor"
    vTcl:DefineAlias "$top" "HiddenQueryExtractor" vTcl:Toplevel:WidgetProc "" 1
    set vTcl(real_top) {}
    vTcl:withBusyCursor {
    set site_3_0 $top.m44
    menu $site_3_0 \
        -activebackground SystemHighlight \
        -activeforeground SystemHighlightText \
        -background $vTcl(pr,menubgcolor) -font TkDefaultFont \
        -foreground $vTcl(pr,menufgcolor) -tearoff 0 
    canvas $top.can45 \
        -background $vTcl(actual_gui_bg) -borderwidth 2 -closeenough 1.0 \
        -height 732 -highlightbackground $vTcl(actual_gui_bg) \
        -highlightcolor black -insertbackground black -relief ridge \
        -selectbackground #c4c4c4 -selectforeground black -width 1173 
    vTcl:DefineAlias "$top.can45" "Canvas1" vTcl:WidgetProc "HiddenQueryExtractor" 1
    set site_3_0 $top.can45
    frame $site_3_0.fra59 \
        -borderwidth 2 -relief groove -background #0080c0 -height 41 \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -width 1181 
    vTcl:DefineAlias "$site_3_0.fra59" "Frame1_5" vTcl:WidgetProc "HiddenQueryExtractor" 1
    set site_4_0 $site_3_0.fra59
    label $site_4_0.lab60 \
        -activebackground #f9f9f9 -activeforeground black -background #0080c0 \
        -disabledforeground #a3a3a3 \
        -font {-family {Segoe UI} -size 14 -weight bold} -foreground #ffffff \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -text {EXTRACTION IN PROGRESS...} 
    vTcl:DefineAlias "$site_4_0.lab60" "Label1_2" vTcl:WidgetProc "HiddenQueryExtractor" 1
    place $site_4_0.lab60 \
        -in $site_4_0 -x 0 -relx 0.009 -y 0 -rely 0.244 -width 0 \
        -relwidth 0.231 -height 0 -relheight 0.561 -anchor nw \
        -bordermode ignore 
    ttk::style configure TSizegrip -background $vTcl(actual_gui_bg)
    vTcl::widgets::ttk::sizegrip::CreateCmd $site_3_0.tSi64 \
        -cursor size_nw_se 
    vTcl:DefineAlias "$site_3_0.tSi64" "TSizegrip1" vTcl:WidgetProc "HiddenQueryExtractor" 1
    label $site_3_0.lab44 \
        -activebackground #f9f9f9 -activeforeground black \
        -background $vTcl(actual_gui_bg) -disabledforeground #a3a3a3 \
        -font {-family {Segoe UI} -size 11 -weight bold} \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -text SELECT 
    vTcl:DefineAlias "$site_3_0.lab44" "Label2_2" vTcl:WidgetProc "HiddenQueryExtractor" 1
    label $site_3_0.lab45 \
        -activebackground #f9f9f9 -activeforeground black \
        -background $vTcl(actual_gui_bg) -disabledforeground #a3a3a3 \
        -font {-family {Segoe UI} -size 11 -weight bold} \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -text FROM 
    vTcl:DefineAlias "$site_3_0.lab45" "Label2_3" vTcl:WidgetProc "HiddenQueryExtractor" 1
    label $site_3_0.lab47 \
        -activebackground #f9f9f9 -activeforeground black \
        -background $vTcl(actual_gui_bg) -disabledforeground #a3a3a3 \
        -font {-family {Segoe UI} -size 11 -weight bold} \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -text WHERE 
    vTcl:DefineAlias "$site_3_0.lab47" "Label2_5" vTcl:WidgetProc "HiddenQueryExtractor" 1
    label $site_3_0.lab48 \
        -activebackground #f9f9f9 -activeforeground black \
        -background $vTcl(actual_gui_bg) -disabledforeground #a3a3a3 \
        -font {-family {Segoe UI} -size 11 -weight bold} \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -text {GROUP BY} 
    vTcl:DefineAlias "$site_3_0.lab48" "Label2_6" vTcl:WidgetProc "HiddenQueryExtractor" 1
    label $site_3_0.lab50 \
        -activebackground #f9f9f9 -activeforeground black \
        -background $vTcl(actual_gui_bg) -disabledforeground #a3a3a3 \
        -font {-family {Segoe UI} -size 11 -weight bold} \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -text {ORDER BY} 
    vTcl:DefineAlias "$site_3_0.lab50" "Label2_7" vTcl:WidgetProc "HiddenQueryExtractor" 1
    label $site_3_0.lab52 \
        -activebackground #f9f9f9 -activeforeground black \
        -background $vTcl(actual_gui_bg) -disabledforeground #a3a3a3 \
        -font {-family {Segoe UI} -size 11 -weight bold} \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -text LIMIT 
    vTcl:DefineAlias "$site_3_0.lab52" "Label2_8" vTcl:WidgetProc "HiddenQueryExtractor" 1
    vTcl::widgets::ttk::scrolledtext::CreateCmd $site_3_0.scr71 \
        -borderwidth 2 -relief groove -background $vTcl(actual_gui_bg) \
        -height 75 -highlightbackground $vTcl(actual_gui_bg) \
        -highlightcolor black -width 125 
    vTcl:DefineAlias "$site_3_0.scr71" "selet_op_proc" vTcl:WidgetProc "HiddenQueryExtractor" 1

    $site_3_0.scr71.01 configure -background white \
        -font TkTextFont \
        -foreground black \
        -height 3 \
        -highlightbackground #d9d9d9 \
        -highlightcolor black \
        -insertbackground black \
        -insertborderwidth 3 \
        -selectbackground #c4c4c4 \
        -selectforeground black \
        -width 10 \
        -wrap none
    vTcl::widgets::ttk::scrolledtext::CreateCmd $site_3_0.scr73 \
        -borderwidth 2 -relief groove -background $vTcl(actual_gui_bg) \
        -height 75 -highlightbackground $vTcl(actual_gui_bg) \
        -highlightcolor black -width 125 
    vTcl:DefineAlias "$site_3_0.scr73" "from_op_proc" vTcl:WidgetProc "HiddenQueryExtractor" 1

    $site_3_0.scr73.01 configure -background white \
        -font TkTextFont \
        -foreground black \
        -height 3 \
        -highlightbackground #d9d9d9 \
        -highlightcolor black \
        -insertbackground black \
        -insertborderwidth 3 \
        -selectbackground #c4c4c4 \
        -selectforeground black \
        -width 10 \
        -wrap none
    vTcl::widgets::ttk::scrolledtext::CreateCmd $site_3_0.scr74 \
        -borderwidth 2 -relief groove -background $vTcl(actual_gui_bg) \
        -height 75 -highlightbackground $vTcl(actual_gui_bg) \
        -highlightcolor black -width 125 
    vTcl:DefineAlias "$site_3_0.scr74" "where_op_proc" vTcl:WidgetProc "HiddenQueryExtractor" 1

    $site_3_0.scr74.01 configure -background white \
        -font TkTextFont \
        -foreground black \
        -height 3 \
        -highlightbackground #d9d9d9 \
        -highlightcolor black \
        -insertbackground black \
        -insertborderwidth 3 \
        -selectbackground #c4c4c4 \
        -selectforeground black \
        -width 10 \
        -wrap none
    vTcl::widgets::ttk::scrolledtext::CreateCmd $site_3_0.scr75 \
        -borderwidth 2 -relief groove -background $vTcl(actual_gui_bg) \
        -height 75 -highlightbackground $vTcl(actual_gui_bg) \
        -highlightcolor black -width 125 
    vTcl:DefineAlias "$site_3_0.scr75" "groupby_op_proc" vTcl:WidgetProc "HiddenQueryExtractor" 1

    $site_3_0.scr75.01 configure -background white \
        -font TkTextFont \
        -foreground black \
        -height 3 \
        -highlightbackground #d9d9d9 \
        -highlightcolor black \
        -insertbackground black \
        -insertborderwidth 3 \
        -selectbackground #c4c4c4 \
        -selectforeground black \
        -width 10 \
        -wrap none
    vTcl::widgets::ttk::scrolledtext::CreateCmd $site_3_0.scr76 \
        -borderwidth 2 -relief groove -background $vTcl(actual_gui_bg) \
        -height 75 -highlightbackground $vTcl(actual_gui_bg) \
        -highlightcolor black -width 125 
    vTcl:DefineAlias "$site_3_0.scr76" "orderby_op_proc" vTcl:WidgetProc "HiddenQueryExtractor" 1

    $site_3_0.scr76.01 configure -background white \
        -font TkTextFont \
        -foreground black \
        -height 3 \
        -highlightbackground #d9d9d9 \
        -highlightcolor black \
        -insertbackground black \
        -insertborderwidth 3 \
        -selectbackground #c4c4c4 \
        -selectforeground black \
        -width 10 \
        -wrap none
    entry $site_3_0.ent78 \
        -background white -disabledforeground #a3a3a3 -font TkFixedFont \
        -foreground #0080c0 -highlightbackground $vTcl(actual_gui_bg) \
        -highlightcolor black -insertbackground black \
        -selectbackground #c4c4c4 -selectforeground black -width 104 
    vTcl:DefineAlias "$site_3_0.ent78" "limit_op_proc" vTcl:WidgetProc "HiddenQueryExtractor" 1
    button $site_3_0.but44 \
        -activebackground $vTcl(analog_color_m) -activeforeground #000000 \
        -background #0080c0 -disabledforeground #a3a3a3 \
        -font {-family {Segoe UI} -size 12 -weight bold} -foreground #ffffff \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -pady 0 -text NEXT 
    vTcl:DefineAlias "$site_3_0.but44" "proc_next" vTcl:WidgetProc "HiddenQueryExtractor" 1
    frame $site_3_0.fra45 \
        -borderwidth 2 -relief groove -background $vTcl(actual_gui_bg) \
        -height 425 -highlightbackground $vTcl(actual_gui_bg) \
        -highlightcolor black -width 1145 
    vTcl:DefineAlias "$site_3_0.fra45" "Frame1" vTcl:WidgetProc "HiddenQueryExtractor" 1
    set site_4_0 $site_3_0.fra45
    button $site_4_0.but47 \
        -activebackground $vTcl(analog_color_m) -activeforeground #000000 \
        -background #ff8000 -disabledforeground #a3a3a3 \
        -font {-family {Segoe UI} -size 12 -weight bold} \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -pady 0 -text {From Clause Extractor} -wraplength 100 
    vTcl:DefineAlias "$site_4_0.but47" "from_box" vTcl:WidgetProc "HiddenQueryExtractor" 1
    button $site_4_0.but49 \
        -activebackground $vTcl(analog_color_m) -activeforeground #000000 \
        -background #ff8000 -disabledforeground #a3a3a3 \
        -font {-family {Segoe UI} -size 12 -weight bold} \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -pady 0 -text {Database Minimizer} -wraplength 100 
    vTcl:DefineAlias "$site_4_0.but49" "minimizer_box" vTcl:WidgetProc "HiddenQueryExtractor" 1
    frame $site_4_0.fra50 \
        -borderwidth 2 -relief groove -background $vTcl(actual_gui_bg) \
        -height 115 -highlightbackground $vTcl(actual_gui_bg) \
        -highlightcolor black -width 269 
    vTcl:DefineAlias "$site_4_0.fra50" "Frame2" vTcl:WidgetProc "HiddenQueryExtractor" 1
    set site_5_0 $site_4_0.fra50
    button $site_5_0.but51 \
        -activebackground $vTcl(analog_color_m) -activeforeground #000000 \
        -background #ff8000 -disabledforeground #a3a3a3 \
        -font {-family {Segoe UI} -size 12 -weight bold} \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -pady 0 -text {Join Predicate Extractor} -wraplength 100 
    vTcl:DefineAlias "$site_5_0.but51" "join_box" vTcl:WidgetProc "HiddenQueryExtractor" 1
    button $site_5_0.but52 \
        -activebackground $vTcl(analog_color_m) -activeforeground #000000 \
        -background #ff8000 -disabledforeground #a3a3a3 \
        -font {-family {Segoe UI} -size 12 -weight bold} \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -pady 0 -text {Filter Predicate Extractor} -wraplength 100 
    vTcl:DefineAlias "$site_5_0.but52" "filter_box" vTcl:WidgetProc "HiddenQueryExtractor" 1
    place $site_5_0.but51 \
        -in $site_5_0 -x 0 -relx 0.037 -y 0 -rely 0.087 -width 117 \
        -relwidth 0 -height 84 -relheight 0 -anchor nw -bordermode ignore 
    place $site_5_0.but52 \
        -in $site_5_0 -x 0 -relx 0.519 -y 0 -rely 0.087 -width 117 \
        -relwidth 0 -height 84 -relheight 0 -anchor nw -bordermode ignore 
    button $site_4_0.but53 \
        -activebackground $vTcl(analog_color_m) -activeforeground #000000 \
        -background #ff8000 -disabledforeground #a3a3a3 \
        -font {-family {Segoe UI} -size 12 -weight bold} \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -pady 0 -text {Projected Attribute Extractor} -wraplength 100 
    vTcl:DefineAlias "$site_4_0.but53" "projection_box" vTcl:WidgetProc "HiddenQueryExtractor" 1
    button $site_4_0.but54 \
        -activebackground $vTcl(analog_color_m) -activeforeground #000000 \
        -background #ff8000 -disabledforeground #a3a3a3 \
        -font {-family {Segoe UI} -size 12 -weight bold} \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -pady 0 -text {Group By Clause Extractor} -wraplength 100 
    vTcl:DefineAlias "$site_4_0.but54" "groupby_box" vTcl:WidgetProc "HiddenQueryExtractor" 1
    button $site_4_0.but55 \
        -activebackground $vTcl(analog_color_m) -activeforeground #000000 \
        -background #ff8000 -disabledforeground #a3a3a3 \
        -font {-family {Segoe UI} -size 12 -weight bold} \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -pady 0 -text {Aggregation Extractor} -wraplength 100 
    vTcl:DefineAlias "$site_4_0.but55" "agg_box" vTcl:WidgetProc "HiddenQueryExtractor" 1
    button $site_4_0.but56 \
        -activebackground $vTcl(analog_color_m) -activeforeground #000000 \
        -background #ff8000 -disabledforeground #a3a3a3 \
        -font {-family {Segoe UI} -size 12 -weight bold} \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -pady 0 -text {Query Assembler & Checker} -wraplength 100 
    vTcl:DefineAlias "$site_4_0.but56" "assemble_box" vTcl:WidgetProc "HiddenQueryExtractor" 1
    frame $site_4_0.fra57 \
        -borderwidth 2 -relief groove -background $vTcl(actual_gui_bg) \
        -height 115 -highlightbackground $vTcl(actual_gui_bg) \
        -highlightcolor black -width 244 
    vTcl:DefineAlias "$site_4_0.fra57" "Frame3" vTcl:WidgetProc "HiddenQueryExtractor" 1
    set site_5_0 $site_4_0.fra57
    button $site_5_0.but58 \
        -activebackground $vTcl(analog_color_m) -activeforeground #000000 \
        -background #ff8000 -disabledforeground #a3a3a3 \
        -font {-family {Segoe UI} -size 12 -weight bold} \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -pady 0 -text {Limit Extractor} -wraplength 100 
    vTcl:DefineAlias "$site_5_0.but58" "limit_box" vTcl:WidgetProc "HiddenQueryExtractor" 1
    button $site_5_0.but59 \
        -activebackground $vTcl(analog_color_m) -activeforeground #000000 \
        -background #ff8000 -disabledforeground #a3a3a3 \
        -font {-family {Segoe UI} -size 12 -weight bold} \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -pady 0 -text {Order By Clause Extractor} -wraplength 100 
    vTcl:DefineAlias "$site_5_0.but59" "orderby_box" vTcl:WidgetProc "HiddenQueryExtractor" 1
    place $site_5_0.but58 \
        -in $site_5_0 -x 0 -relx 0.041 -y 0 -rely 0.174 -width 107 \
        -relwidth 0 -height 74 -relheight 0 -anchor nw -bordermode ignore 
    place $site_5_0.but59 \
        -in $site_5_0 -x 0 -relx 0.492 -y 0 -rely 0.174 -width 107 \
        -relwidth 0 -height 74 -relheight 0 -anchor nw -bordermode ignore 
    ttk::separator $site_4_0.tSe60
    vTcl:DefineAlias "$site_4_0.tSe60" "TSeparator1" vTcl:WidgetProc "HiddenQueryExtractor" 1
    label $site_4_0.lab61 \
        -activebackground #f9f9f9 -activeforeground black \
        -background $vTcl(actual_gui_bg) -disabledforeground #a3a3a3 \
        -font {-family {Segoe UI} -size 11 -weight bold} \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -text {Database Mutation} 
    vTcl:DefineAlias "$site_4_0.lab61" "Label2" vTcl:WidgetProc "HiddenQueryExtractor" 1
    label $site_4_0.lab62 \
        -activebackground #f9f9f9 -activeforeground black \
        -background $vTcl(actual_gui_bg) -disabledforeground #a3a3a3 \
        -font {-family {Segoe UI} -size 11 -weight bold} \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -text {Database Generation} 
    vTcl:DefineAlias "$site_4_0.lab62" "Label2_9" vTcl:WidgetProc "HiddenQueryExtractor" 1
    button $site_4_0.but44 \
        -activebackground $vTcl(analog_color_m) -activeforeground #000000 \
        -background $vTcl(actual_gui_bg) -borderwidth 0 \
        -disabledforeground #a3a3a3 -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -image image21 -pady 0 -text Button 
    vTcl:DefineAlias "$site_4_0.but44" "Button1" vTcl:WidgetProc "HiddenQueryExtractor" 1
    button $site_4_0.but45 \
        -activebackground $vTcl(analog_color_m) -activeforeground #000000 \
        -background $vTcl(actual_gui_bg) -borderwidth 0 \
        -disabledforeground #a3a3a3 -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -image image20 -pady 0 -text Button 
    vTcl:DefineAlias "$site_4_0.but45" "Button1_1" vTcl:WidgetProc "HiddenQueryExtractor" 1
    button $site_4_0.but46 \
        -activebackground $vTcl(analog_color_m) -activeforeground #000000 \
        -background $vTcl(actual_gui_bg) -borderwidth 0 \
        -disabledforeground #a3a3a3 -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -image image22 -pady 0 -text Button 
    vTcl:DefineAlias "$site_4_0.but46" "Button1_2" vTcl:WidgetProc "HiddenQueryExtractor" 1
    button $site_4_0.but48 \
        -activebackground $vTcl(analog_color_m) -activeforeground #000000 \
        -background $vTcl(actual_gui_bg) -borderwidth 0 \
        -disabledforeground #a3a3a3 -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -image image23 -pady 0 -text Button 
    vTcl:DefineAlias "$site_4_0.but48" "Button1_3" vTcl:WidgetProc "HiddenQueryExtractor" 1
    button $site_4_0.but50 \
        -activebackground $vTcl(analog_color_m) -activeforeground #000000 \
        -background $vTcl(actual_gui_bg) -borderwidth 0 \
        -disabledforeground #a3a3a3 -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -image image28 -pady 0 -text Button 
    vTcl:DefineAlias "$site_4_0.but50" "Button1_4" vTcl:WidgetProc "HiddenQueryExtractor" 1
    button $site_4_0.but51 \
        -activebackground $vTcl(analog_color_m) -activeforeground #000000 \
        -background $vTcl(actual_gui_bg) -borderwidth 0 \
        -disabledforeground #a3a3a3 -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -image image24 -pady 0 -text Button 
    vTcl:DefineAlias "$site_4_0.but51" "Button1_5" vTcl:WidgetProc "HiddenQueryExtractor" 1
    button $site_4_0.but52 \
        -activebackground $vTcl(analog_color_m) -activeforeground #000000 \
        -background $vTcl(actual_gui_bg) -borderwidth 0 \
        -disabledforeground #a3a3a3 -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -image image25 -pady 0 -text Button 
    vTcl:DefineAlias "$site_4_0.but52" "Button1_6" vTcl:WidgetProc "HiddenQueryExtractor" 1
    button $site_4_0.but57 \
        -activebackground $vTcl(analog_color_m) -activeforeground #000000 \
        -background $vTcl(actual_gui_bg) -borderwidth 0 \
        -disabledforeground #a3a3a3 -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -image image26 -pady 0 -text Button 
    vTcl:DefineAlias "$site_4_0.but57" "Button1_7" vTcl:WidgetProc "HiddenQueryExtractor" 1
    button $site_4_0.but58 \
        -activebackground $vTcl(analog_color_m) -activeforeground #000000 \
        -background $vTcl(actual_gui_bg) -borderwidth 0 \
        -disabledforeground #a3a3a3 -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -image image27 -pady 0 -text Button 
    vTcl:DefineAlias "$site_4_0.but58" "Button1_8" vTcl:WidgetProc "HiddenQueryExtractor" 1
    place $site_4_0.but47 \
        -in $site_4_0 -x 0 -relx 0.087 -y 0 -rely 0.069 -width 117 \
        -relwidth 0 -height 84 -relheight 0 -anchor nw -bordermode ignore 
    place $site_4_0.but49 \
        -in $site_4_0 -x 0 -relx 0.285 -y 0 -rely 0.069 -width 117 \
        -relwidth 0 -height 84 -relheight 0 -anchor nw -bordermode ignore 
    place $site_4_0.fra50 \
        -in $site_4_0 -x 0 -relx 0.475 -y 0 -rely 0.046 -width 0 \
        -relwidth 0.235 -height 0 -relheight 0.264 -anchor nw \
        -bordermode ignore 
    place $site_4_0.but53 \
        -in $site_4_0 -x 0 -relx 0.803 -y 0 -rely 0.069 -width 117 \
        -relwidth 0 -height 84 -relheight 0 -anchor nw -bordermode ignore 
    place $site_4_0.but54 \
        -in $site_4_0 -x 0 -relx 0.803 -y 0 -rely 0.621 -width 117 \
        -relwidth 0 -height 84 -relheight 0 -anchor nw -bordermode ignore 
    place $site_4_0.but55 \
        -in $site_4_0 -x 0 -relx 0.611 -y 0 -rely 0.621 -width 117 \
        -relwidth 0 -height 84 -relheight 0 -anchor nw -bordermode ignore 
    place $site_4_0.but56 \
        -in $site_4_0 -x 0 -relx 0.087 -y 0 -rely 0.621 -width 117 \
        -relwidth 0 -height 84 -relheight 0 -anchor nw -bordermode ignore 
    place $site_4_0.fra57 \
        -in $site_4_0 -x 0 -relx 0.306 -y 0 -rely 0.598 -width 0 \
        -relwidth 0.213 -height 0 -relheight 0.264 -anchor nw \
        -bordermode ignore 
    place $site_4_0.tSe60 \
        -in $site_4_0 -x 0 -relx 0.013 -y 0 -rely 0.441 -width 0 \
        -relwidth 0.979 -height 0 -relheight 0.005 -anchor nw \
        -bordermode inside 
    place $site_4_0.lab61 \
        -in $site_4_0 -x 0 -relx 0.207 -y 0 -rely 0.368 -width 0 \
        -relwidth 0.121 -height 0 -relheight 0.071 -anchor nw \
        -bordermode ignore 
    place $site_4_0.lab62 \
        -in $site_4_0 -x 0 -relx 0.199 -y 0 -rely 0.46 -width 0 \
        -relwidth 0.139 -height 0 -relheight 0.048 -anchor nw \
        -bordermode ignore 
    place $site_4_0.but44 \
        -in $site_4_0 -x 0 -relx 0.201 -y 0 -rely 0.092 -width 86 -relwidth 0 \
        -height 54 -relheight 0 -anchor nw -bordermode ignore 
    place $site_4_0.but45 \
        -in $site_4_0 -x 0 -relx 0.009 -y 0 -rely 0.069 -width 83 -relwidth 0 \
        -height 74 -relheight 0 -anchor nw -bordermode ignore 
    place $site_4_0.but46 \
        -in $site_4_0 -x 0 -relx 0.393 -y 0 -rely 0.069 -width 93 -relwidth 0 \
        -height 64 -relheight 0 -anchor nw -bordermode ignore 
    place $site_4_0.but48 \
        -in $site_4_0 -x 0 -relx 0.724 -y 0 -rely 0.023 -width 83 -relwidth 0 \
        -height 94 -relheight 0 -anchor nw -bordermode ignore 
    place $site_4_0.but50 \
        -in $site_4_0 -x 0 -relx 0.908 -y 0 -rely 0.092 -width 103 \
        -relwidth 0 -height 304 -relheight 0 -anchor nw -bordermode ignore 
    place $site_4_0.but51 \
        -in $site_4_0 -x 0 -relx 0.716 -y 0 -rely 0.575 -width 93 -relwidth 0 \
        -height 84 -relheight 0 -anchor nw -bordermode ignore 
    place $site_4_0.but52 \
        -in $site_4_0 -x 0 -relx 0.524 -y 0 -rely 0.575 -width 93 -relwidth 0 \
        -height 94 -relheight 0 -anchor nw -bordermode ignore 
    place $site_4_0.but57 \
        -in $site_4_0 -x 0 -relx 0.201 -y 0 -rely 0.552 -width 113 \
        -relwidth 0 -height 104 -relheight 0 -anchor nw -bordermode ignore 
    place $site_4_0.but58 \
        -in $site_4_0 -x 0 -relx 0.009 -y 0 -rely 0.621 -width 83 -relwidth 0 \
        -height 74 -relheight 0 -anchor nw -bordermode ignore 
    button $site_3_0.but45 \
        -activebackground $vTcl(analog_color_m) -activeforeground #000000 \
        -background $vTcl(actual_gui_bg) -borderwidth 0 \
        -disabledforeground #a3a3a3 -font TkDefaultFont \
        -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -image image29 -pady 0 -text Button 
    vTcl:DefineAlias "$site_3_0.but45" "logo" vTcl:WidgetProc "HiddenQueryExtractor" 1
    place $site_3_0.fra59 \
        -in $site_3_0 -x 0 -relx -0.009 -y 0 -rely 0.656 -width 0 \
        -relwidth 1.006 -height 0 -relheight 0.056 -anchor nw \
        -bordermode ignore 
    place $site_3_0.tSi64 \
        -in $site_3_0 -x 0 -relx 1 -y 0 -rely 1 -anchor se -bordermode inside 
    place $site_3_0.lab44 \
        -in $site_3_0 -x 0 -relx 0.009 -y 0 -rely 0.765 -width 0 \
        -relwidth 0.057 -height 0 -relheight 0.026 -anchor nw \
        -bordermode ignore 
    place $site_3_0.lab45 \
        -in $site_3_0 -x 0 -relx 0.281 -y 0 -rely 0.765 -width 0 \
        -relwidth 0.067 -height 0 -relheight 0.026 -anchor nw \
        -bordermode ignore 
    place $site_3_0.lab47 \
        -in $site_3_0 -x 0 -relx 0.579 -y 0 -rely 0.765 -width 0 \
        -relwidth 0.066 -height 0 -relheight 0.026 -anchor nw \
        -bordermode ignore 
    place $site_3_0.lab48 \
        -in $site_3_0 -x 0 -relx 0.009 -y 0 -rely 0.915 -width 0 \
        -relwidth 0.066 -height 0 -relheight 0.026 -anchor nw \
        -bordermode ignore 
    place $site_3_0.lab50 \
        -in $site_3_0 -x 0 -relx 0.29 -y 0 -rely 0.915 -width 0 \
        -relwidth 0.066 -height 0 -relheight 0.025 -anchor nw \
        -bordermode ignore 
    place $site_3_0.lab52 \
        -in $site_3_0 -x 0 -relx 0.588 -y 0 -rely 0.915 -width 0 \
        -relwidth 0.066 -height 0 -relheight 0.026 -anchor nw \
        -bordermode ignore 
    place $site_3_0.scr71 \
        -in $site_3_0 -x 0 -relx 0.068 -y 0 -rely 0.751 -width 0 \
        -relwidth 0.209 -height 0 -relheight 0.06 -anchor nw \
        -bordermode ignore 
    place $site_3_0.scr73 \
        -in $site_3_0 -x 0 -relx 0.349 -y 0 -rely 0.751 -width 0 \
        -relwidth 0.224 -height 0 -relheight 0.06 -anchor nw \
        -bordermode ignore 
    place $site_3_0.scr74 \
        -in $site_3_0 -x 0 -relx 0.647 -y 0 -rely 0.71 -width 0 \
        -relwidth 0.341 -height 0 -relheight 0.156 -anchor nw \
        -bordermode ignore 
    place $site_3_0.scr75 \
        -in $site_3_0 -x 0 -relx 0.085 -y 0 -rely 0.902 -width 0 \
        -relwidth 0.192 -height 0 -relheight 0.061 -anchor nw \
        -bordermode ignore 
    place $site_3_0.scr76 \
        -in $site_3_0 -x 0 -relx 0.366 -y 0 -rely 0.902 -width 0 \
        -relwidth 0.208 -height 0 -relheight 0.061 -anchor nw \
        -bordermode ignore 
    place $site_3_0.ent78 \
        -in $site_3_0 -x 0 -relx 0.647 -y 0 -rely 0.902 -width 104 \
        -relwidth 0 -height 40 -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.but44 \
        -in $site_3_0 -x 0 -relx 0.928 -y 0 -rely 0.915 -width 67 -relwidth 0 \
        -height 34 -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.fra45 \
        -in $site_3_0 -x 0 -relx 0.009 -y 0 -rely 0.068 -width 0 \
        -relwidth 0.985 -height 0 -relheight 0.581 -anchor nw \
        -bordermode ignore 
    place $site_3_0.but45 \
        -in $site_3_0 -x 0 -relx 0.422 -y 0 -rely 0.014 -width 217 \
        -relwidth 0 -height 34 -relheight 0 -anchor nw -bordermode ignore 
    ###################
    # SETTING GEOMETRY
    ###################
    place $top.can45 \
        -in $top -x 0 -relx 0.008 -y 0 -rely 0.013 -width 0 -relwidth 0.987 \
        -height 0 -relheight 0.981 -anchor nw -bordermode ignore 
    } ;# end vTcl:withBusyCursor 

    vTcl:FireEvent $base <<Ready>>
}

set btop ""
if {$vTcl(borrow)} {
    set btop .bor[expr int([expr rand() * 100])]
    while {[lsearch $btop $vTcl(tops)] != -1} {
        set btop .bor[expr int([expr rand() * 100])]
    }
}
set vTcl(btop) $btop
Window show .
Window show .top43 $btop
if {$vTcl(borrow)} {
    $btop configure -background plum
}

