#############################################################################
# Generated by PAGE version 5.0.3
#  in conjunction with Tcl version 8.6
#  Mar 24, 2020 12:03:50 PM IST  platform: Windows NT
set vTcl(timestamp) ""


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
        -background $vTcl(actual_gui_bg) 
    wm focusmodel $top passive
    wm geometry $top 901x350+322+125
    update
    # set in toplevel.wgt.
    global vTcl
    global img_list
    set vTcl(save,dflt,origin) 0
    wm maxsize $top 1370 749
    wm minsize $top 120 1
    wm overrideredirect $top 0
    wm resizable $top 1 1
    wm deiconify $top
    wm title $top "Hidden Query Extractor"
    vTcl:DefineAlias "$top" "Toplevel1" vTcl:Toplevel:WidgetProc "" 1
    set vTcl(real_top) {}
    vTcl:withBusyCursor {
    canvas $top.can44 \
        -background #24b8ff -borderwidth 2 -closeenough 1.0 -height 333 \
        -insertbackground black -relief ridge -selectbackground #c4c4c4 \
        -selectforeground black -width 653 
    vTcl:DefineAlias "$top.can44" "Canvas1" vTcl:WidgetProc "Toplevel1" 1
    set site_3_0 $top.can44
    button $site_3_0.but45 \
        -activebackground $vTcl(analog_color_m) -activeforeground #000000 \
        -background #24b8ff -borderwidth 0 -disabledforeground #a3a3a3 \
        -font TkDefaultFont -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -pady 0 -text Button 
    vTcl:DefineAlias "$site_3_0.but45" "reveal_logo" vTcl:WidgetProc "Toplevel1" 1
    button $site_3_0.but46 \
        -activebackground $vTcl(analog_color_m) -activeforeground #000000 \
        -background #24b8ff -borderwidth 0 -disabledforeground #a3a3a3 \
        -font TkDefaultFont -foreground $vTcl(actual_gui_fg) \
        -highlightbackground $vTcl(actual_gui_bg) -highlightcolor black \
        -pady 0 -text Button 
    
    vTcl:DefineAlias "$site_3_0.but47" "ii_logo" vTcl:WidgetProc "Toplevel1" 1
    ttk::progressbar $site_3_0.tPr48 \
        -length 810 
    vTcl:DefineAlias "$site_3_0.tPr48" "TProgressbar" vTcl:WidgetProc "Toplevel1" 1
    vTcl:DefineAlias "$site_3_0.lab49" "copyright" vTcl:WidgetProc "Toplevel1" 1
    place $site_3_0.but45 \
        -in $site_3_0 -x 0 -relx 0.28 -y 0 -rely 0.022 -width 387 -relwidth 0 \
        -height 144 -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.but46 \
        -in $site_3_0 -x 0 -relx 0.011 -y 0 -rely 0.022 -width 237 \
        -relwidth 0 -height 144 -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.but47 \
        -in $site_3_0 -x 0 -relx 0.717 -y 0 -rely 0.022 -width 247 \
        -relwidth 0 -height 144 -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.tPr48 \
        -in $site_3_0 -x 0 -relx 0.045 -y 0 -rely 0.564 -width 0 \
        -relwidth 0.907 -height 22 -relheight 0 -anchor nw -bordermode ignore 
    place $site_3_0.lab49 \
        -in $site_3_0 -x 0 -relx 0.011 -y 0 -rely 0.89 -width 0 \
        -relwidth 0.979 -height 0 -relheight 0.062 -anchor nw \
        -bordermode ignore 
    ###################
    # SETTING GEOMETRY
    ###################
    place $top.can44 \
        -in $top -x 0 -y 0 -rely 0.029 -width 0 -relwidth 0.991 -height 0 \
        -relheight 0.962 -anchor nw -bordermode ignore 
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
