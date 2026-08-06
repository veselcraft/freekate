.class public Lcom/perm/kate/theme/DrawableHelper;
.super Ljava/lang/Object;
.source "DrawableHelper.java"


# static fields
.field private static bradius:F

.field private static button_arr_radius:[F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 19
    const/high16 v0, 0x40400000    # 3.0f

    sput v0, Lcom/perm/kate/theme/DrawableHelper;->bradius:F

    .line 20
    const/16 v0, 0x8

    new-array v0, v0, [F

    const/4 v1, 0x0

    sget v2, Lcom/perm/kate/theme/DrawableHelper;->bradius:F

    aput v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lcom/perm/kate/theme/DrawableHelper;->bradius:F

    aput v2, v0, v1

    const/4 v1, 0x2

    sget v2, Lcom/perm/kate/theme/DrawableHelper;->bradius:F

    aput v2, v0, v1

    const/4 v1, 0x3

    sget v2, Lcom/perm/kate/theme/DrawableHelper;->bradius:F

    aput v2, v0, v1

    const/4 v1, 0x4

    sget v2, Lcom/perm/kate/theme/DrawableHelper;->bradius:F

    aput v2, v0, v1

    const/4 v1, 0x5

    sget v2, Lcom/perm/kate/theme/DrawableHelper;->bradius:F

    aput v2, v0, v1

    const/4 v1, 0x6

    sget v2, Lcom/perm/kate/theme/DrawableHelper;->bradius:F

    aput v2, v0, v1

    const/4 v1, 0x7

    sget v2, Lcom/perm/kate/theme/DrawableHelper;->bradius:F

    aput v2, v0, v1

    sput-object v0, Lcom/perm/kate/theme/DrawableHelper;->button_arr_radius:[F

    return-void
.end method

.method public static getButtonBgDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p0, "bg_color"    # I

    .prologue
    const/4 v3, 0x0

    .line 22
    new-instance v0, Landroid/graphics/drawable/shapes/RoundRectShape;

    sget-object v2, Lcom/perm/kate/theme/DrawableHelper;->button_arr_radius:[F

    invoke-direct {v0, v2, v3, v3}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    .line 23
    .local v0, "round_rect":Landroid/graphics/drawable/shapes/RoundRectShape;
    new-instance v1, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 24
    .local v1, "shape_drawable":Landroid/graphics/drawable/ShapeDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/graphics/Paint;->setColor(I)V

    .line 25
    return-object v1
.end method

.method public static getFloatingActionButtonBgDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p0, "bg_color"    # I

    .prologue
    .line 87
    sget-object v2, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {}, Lcom/perm/kate/theme/ThemeColorsHelper;->getFloatingActionButtonBg()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 88
    .local v1, "normal_state":Landroid/graphics/drawable/Drawable;
    move v0, p0

    .line 89
    .local v0, "normal_color":I
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 92
    return-object v1
.end method

.method public static getHeaderBottomLineDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p0, "bg_color"    # I

    .prologue
    .line 81
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 82
    .local v0, "color_drawable":Landroid/graphics/drawable/ColorDrawable;
    return-object v0
.end method

.method public static getNotifyBg(IZ)Landroid/graphics/drawable/Drawable;
    .locals 7
    .param p0, "bg_color"    # I
    .param p1, "is_tablet"    # Z

    .prologue
    const/4 v6, 0x0

    .line 98
    if-eqz p1, :cond_0

    const-wide/high16 v4, 0x402a000000000000L    # 13.0

    :goto_0
    invoke-static {v4, v5}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v3

    .line 99
    .local v3, "size":I
    const/16 v4, 0x8

    new-array v0, v4, [F

    const/4 v4, 0x0

    int-to-float v5, v3

    aput v5, v0, v4

    const/4 v4, 0x1

    int-to-float v5, v3

    aput v5, v0, v4

    const/4 v4, 0x2

    int-to-float v5, v3

    aput v5, v0, v4

    const/4 v4, 0x3

    int-to-float v5, v3

    aput v5, v0, v4

    const/4 v4, 0x4

    int-to-float v5, v3

    aput v5, v0, v4

    const/4 v4, 0x5

    int-to-float v5, v3

    aput v5, v0, v4

    const/4 v4, 0x6

    int-to-float v5, v3

    aput v5, v0, v4

    const/4 v4, 0x7

    int-to-float v5, v3

    aput v5, v0, v4

    .line 100
    .local v0, "notify_arr_radius":[F
    new-instance v1, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v1, v0, v6, v6}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    .line 101
    .local v1, "round_rect":Landroid/graphics/drawable/shapes/RoundRectShape;
    new-instance v2, Landroid/graphics/drawable/ShapeDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 102
    .local v2, "shape_drawable":Landroid/graphics/drawable/ShapeDrawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {v4, p0}, Landroid/graphics/Paint;->setColor(I)V

    .line 103
    return-object v2

    .line 98
    .end local v0    # "notify_arr_radius":[F
    .end local v1    # "round_rect":Landroid/graphics/drawable/shapes/RoundRectShape;
    .end local v2    # "shape_drawable":Landroid/graphics/drawable/ShapeDrawable;
    .end local v3    # "size":I
    :cond_0
    const-wide/high16 v4, 0x4022000000000000L    # 9.0

    goto :goto_0
.end method

.method public static getTabItemBgDrawable(IIIZI)Landroid/graphics/drawable/Drawable;
    .locals 18
    .param p0, "tab_bg_color"    # I
    .param p1, "tab_focus_color"    # I
    .param p2, "tab_active_color"    # I
    .param p3, "is_material_theme"    # Z
    .param p4, "dip_tab_height"    # I

    .prologue
    .line 29
    new-instance v17, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct/range {v17 .. v18}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 30
    .local v17, "normal_state":Landroid/graphics/drawable/ColorDrawable;
    new-instance v10, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v4, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v4}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-direct {v10, v4}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 31
    .local v10, "bg_rect":Landroid/graphics/drawable/ShapeDrawable;
    invoke-virtual {v10}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v4

    move/from16 v0, p0

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 32
    new-instance v14, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v4, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v4}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-direct {v14, v4}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 33
    .local v14, "focused_rect":Landroid/graphics/drawable/ShapeDrawable;
    invoke-virtual {v14}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 34
    new-instance v9, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v4, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v4}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-direct {v9, v4}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 35
    .local v9, "bg_focused_rect":Landroid/graphics/drawable/ShapeDrawable;
    invoke-virtual {v9}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 37
    if-eqz p3, :cond_2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v15

    .line 40
    .local v15, "indicator_height":I
    :goto_0
    new-instance v16, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v4, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v4}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    move-object/from16 v0, v16

    invoke-direct {v0, v4}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 41
    .local v16, "line_rect":Landroid/graphics/drawable/ShapeDrawable;
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v4

    move/from16 v0, p2

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 42
    const/4 v4, 0x2

    new-array v11, v4, [Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    aput-object v16, v11, v4

    const/4 v4, 0x1

    aput-object v10, v11, v4

    .line 43
    .local v11, "drawarray":[Landroid/graphics/drawable/Drawable;
    new-instance v2, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v2, v11}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 44
    .local v2, "active_state_drawable":Landroid/graphics/drawable/LayerDrawable;
    if-lez p4, :cond_0

    .line 45
    const/4 v3, 0x0

    const/4 v4, 0x0

    sub-int v5, p4, v15

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 46
    :cond_0
    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v7, v15

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 49
    const/4 v4, 0x2

    new-array v12, v4, [Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    aput-object v16, v12, v4

    const/4 v4, 0x1

    aput-object v9, v12, v4

    .line 50
    .local v12, "drawarray2":[Landroid/graphics/drawable/Drawable;
    new-instance v3, Landroid/graphics/drawable/LayerDrawable;

    invoke-direct {v3, v12}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 51
    .local v3, "selected_state_drawable":Landroid/graphics/drawable/LayerDrawable;
    if-lez p4, :cond_1

    .line 52
    const/4 v4, 0x0

    const/4 v5, 0x0

    sub-int v6, p4, v15

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 53
    :cond_1
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, v15

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 56
    new-instance v13, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v13}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 57
    .local v13, "ds_bg":Landroid/graphics/drawable/StateListDrawable;
    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    invoke-virtual {v13, v4, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 58
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const v6, 0x10100a1

    aput v6, v4, v5

    invoke-virtual {v13, v4, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 59
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v5, 0x0

    const v6, 0x10100a7

    aput v6, v4, v5

    invoke-virtual {v13, v4, v14}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 60
    sget-object v4, Landroid/util/StateSet;->WILD_CARD:[I

    move-object/from16 v0, v17

    invoke-virtual {v13, v4, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 61
    return-object v13

    .line 37
    .end local v2    # "active_state_drawable":Landroid/graphics/drawable/LayerDrawable;
    .end local v3    # "selected_state_drawable":Landroid/graphics/drawable/LayerDrawable;
    .end local v11    # "drawarray":[Landroid/graphics/drawable/Drawable;
    .end local v12    # "drawarray2":[Landroid/graphics/drawable/Drawable;
    .end local v13    # "ds_bg":Landroid/graphics/drawable/StateListDrawable;
    .end local v15    # "indicator_height":I
    .end local v16    # "line_rect":Landroid/graphics/drawable/ShapeDrawable;
    :cond_2
    const-wide/high16 v4, 0x4018000000000000L    # 6.0

    invoke-static {v4, v5}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v15

    goto/16 :goto_0

    .line 57
    nop

    :array_0
    .array-data 4
        0x10100a1
        0x10100a7
    .end array-data
.end method

.method public static getTabletTabItemBgDrawable(III)Landroid/graphics/drawable/Drawable;
    .locals 8
    .param p0, "tab_bg_color"    # I
    .param p1, "tab_focus_color"    # I
    .param p2, "tab_active_color"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 66
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 67
    .local v2, "focused_rect":Landroid/graphics/drawable/ColorDrawable;
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 68
    .local v0, "active_rect":Landroid/graphics/drawable/ColorDrawable;
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 71
    .local v3, "transparent_rect":Landroid/graphics/drawable/ColorDrawable;
    new-instance v1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 73
    .local v1, "ds_bg":Landroid/graphics/drawable/StateListDrawable;
    const/4 v4, 0x2

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    invoke-virtual {v1, v4, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 74
    new-array v4, v7, [I

    const v5, 0x10102fe

    aput v5, v4, v6

    invoke-virtual {v1, v4, v0}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 75
    new-array v4, v7, [I

    const v5, 0x10100a7

    aput v5, v4, v6

    invoke-virtual {v1, v4, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 76
    sget-object v4, Landroid/util/StateSet;->WILD_CARD:[I

    invoke-virtual {v1, v4, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 77
    return-object v1

    .line 73
    nop

    :array_0
    .array-data 4
        0x10102fe
        0x10100a7
    .end array-data
.end method
