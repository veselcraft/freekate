.class public Lcom/perm/kate/theme/ColorTheme;
.super Ljava/lang/Object;
.source "ColorTheme.java"


# static fields
.field private static colorTheme:Lcom/perm/kate/theme/ColorTheme;


# instance fields
.field private colorHelper:Lcom/perm/kate/theme/ThemeColorsHelper;

.field private theme:I


# direct methods
.method constructor <init>(I)V
    .locals 2
    .param p1, "theme"    # I

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Lcom/perm/kate/theme/ColorTheme;->theme:I

    .line 31
    new-instance v0, Lcom/perm/kate/theme/ThemeColorsHelper;

    sget-object v1, Lcom/perm/kate/BaseActivity;->theme_id:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lcom/perm/kate/theme/ThemeColorsHelper;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/perm/kate/theme/ColorTheme;->colorHelper:Lcom/perm/kate/theme/ThemeColorsHelper;

    .line 32
    return-void
.end method

.method public static getColorTheme()Lcom/perm/kate/theme/ColorTheme;
    .locals 2

    .prologue
    .line 14
    sget-object v0, Lcom/perm/kate/theme/ColorTheme;->colorTheme:Lcom/perm/kate/theme/ColorTheme;

    if-nez v0, :cond_0

    .line 16
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Lcom/perm/kate/BaseActivity;->GetTheme(Landroid/content/Context;)V

    .line 17
    new-instance v0, Lcom/perm/kate/theme/ColorTheme;

    sget v1, Lcom/perm/kate/BaseActivity;->Theme:I

    invoke-direct {v0, v1}, Lcom/perm/kate/theme/ColorTheme;-><init>(I)V

    sput-object v0, Lcom/perm/kate/theme/ColorTheme;->colorTheme:Lcom/perm/kate/theme/ColorTheme;

    .line 19
    :cond_0
    sget-object v0, Lcom/perm/kate/theme/ColorTheme;->colorTheme:Lcom/perm/kate/theme/ColorTheme;

    return-object v0
.end method

.method public static reset()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    sput-object v0, Lcom/perm/kate/theme/ColorTheme;->colorTheme:Lcom/perm/kate/theme/ColorTheme;

    .line 24
    return-void
.end method


# virtual methods
.method public Colors()[I
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/perm/kate/theme/ColorTheme;->colorHelper:Lcom/perm/kate/theme/ThemeColorsHelper;

    invoke-virtual {v0}, Lcom/perm/kate/theme/ThemeColorsHelper;->getThemeColors()[I

    move-result-object v0

    return-object v0
.end method

.method public getButtonBgDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/perm/kate/theme/ColorTheme;->Colors()[I

    move-result-object v0

    .line 58
    .local v0, "colors":[I
    const/4 v2, 0x0

    aget v1, v0, v2

    .line 59
    .local v1, "header_bg_color":I
    invoke-static {v1}, Lcom/perm/kate/theme/DrawableHelper;->getButtonBgDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    return-object v2
.end method

.method public getFloatingActionButtonBgDrawable()Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/perm/kate/theme/ColorTheme;->Colors()[I

    move-result-object v0

    .line 94
    .local v0, "colors":[I
    const/4 v3, 0x0

    aget v2, v0, v3

    .line 95
    .local v2, "header_bg_color":I
    iget v3, p0, Lcom/perm/kate/theme/ColorTheme;->theme:I

    invoke-static {v3}, Lcom/perm/kate/theme/ThemeColorsHelper;->isMaterial(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    aget v1, v0, v3

    .line 96
    .local v1, "fab_color":I
    :goto_0
    invoke-static {v1}, Lcom/perm/kate/theme/DrawableHelper;->getFloatingActionButtonBgDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    return-object v3

    .end local v1    # "fab_color":I
    :cond_0
    move v1, v2

    .line 95
    goto :goto_0
.end method

.method public getHeaderBgColor()I
    .locals 2

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/perm/kate/theme/ColorTheme;->Colors()[I

    move-result-object v0

    .line 53
    .local v0, "colors":[I
    const/4 v1, 0x0

    aget v1, v0, v1

    return v1
.end method

.method public getHeaderBottomLineDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/perm/kate/theme/ColorTheme;->Colors()[I

    move-result-object v0

    .line 88
    .local v0, "colors":[I
    const/4 v2, 0x0

    aget v1, v0, v2

    .line 89
    .local v1, "header_bg_color":I
    invoke-static {v1}, Lcom/perm/kate/theme/DrawableHelper;->getHeaderBottomLineDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    return-object v2
.end method

.method public getNotifyBg(ZZ)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p1, "is_custom_theme"    # Z
    .param p2, "is_tablet"    # Z

    .prologue
    .line 101
    if-eqz p1, :cond_1

    .line 102
    invoke-virtual {p0}, Lcom/perm/kate/theme/ColorTheme;->Colors()[I

    move-result-object v1

    .line 103
    .local v1, "colors":[I
    const/4 v3, 0x0

    aget v2, v1, v3

    .line 104
    .local v2, "header_bg_color":I
    iget v3, p0, Lcom/perm/kate/theme/ColorTheme;->theme:I

    invoke-static {v3}, Lcom/perm/kate/theme/ThemeColorsHelper;->isMaterial(I)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    aget v0, v1, v3

    .line 108
    .end local v1    # "colors":[I
    .end local v2    # "header_bg_color":I
    .local v0, "color":I
    :goto_0
    invoke-static {v0, p2}, Lcom/perm/kate/theme/DrawableHelper;->getNotifyBg(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    return-object v3

    .end local v0    # "color":I
    .restart local v1    # "colors":[I
    .restart local v2    # "header_bg_color":I
    :cond_0
    move v0, v2

    .line 104
    goto :goto_0

    .line 107
    .end local v1    # "colors":[I
    .end local v2    # "header_bg_color":I
    :cond_1
    iget v3, p0, Lcom/perm/kate/theme/ColorTheme;->theme:I

    invoke-static {v3}, Lcom/perm/kate/theme/ThemeColorsHelper;->getNotifyBgColor(I)I

    move-result v0

    .restart local v0    # "color":I
    goto :goto_0
.end method

.method public getTabItemBgDrawable()Landroid/graphics/drawable/Drawable;
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 63
    iget v6, p0, Lcom/perm/kate/theme/ColorTheme;->theme:I

    invoke-static {v6}, Lcom/perm/kate/theme/ThemeColorsHelper;->isMaterial(I)Z

    move-result v2

    .line 64
    .local v2, "is_material_theme":Z
    invoke-virtual {p0}, Lcom/perm/kate/theme/ColorTheme;->Colors()[I

    move-result-object v0

    .line 65
    .local v0, "colors":[I
    if-eqz v2, :cond_1

    aget v4, v0, v8

    .line 66
    .local v4, "tab_bg_color":I
    :goto_0
    iget v6, p0, Lcom/perm/kate/theme/ColorTheme;->theme:I

    const/4 v7, 0x2

    invoke-static {v6, v7}, Lcom/perm/kate/theme/ThemeColorsHelper;->getDefaultColor(II)I

    move-result v5

    .line 67
    .local v5, "tab_focus_color":I
    if-eqz v2, :cond_2

    aget v3, v0, v9

    .line 68
    .local v3, "tab_active_color":I
    :goto_1
    const/4 v1, 0x0

    .line 69
    .local v1, "dip_tab_height":I
    iget v6, p0, Lcom/perm/kate/theme/ColorTheme;->theme:I

    const v7, 0x7f0a00cc

    if-ne v6, v7, :cond_0

    .line 70
    sget-object v6, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v6}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090014

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v1, v6

    .line 71
    :cond_0
    invoke-static {v4, v5, v3, v2, v1}, Lcom/perm/kate/theme/DrawableHelper;->getTabItemBgDrawable(IIIZI)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    return-object v6

    .line 65
    .end local v1    # "dip_tab_height":I
    .end local v3    # "tab_active_color":I
    .end local v4    # "tab_bg_color":I
    .end local v5    # "tab_focus_color":I
    :cond_1
    iget v6, p0, Lcom/perm/kate/theme/ColorTheme;->theme:I

    invoke-static {v6, v9}, Lcom/perm/kate/theme/ThemeColorsHelper;->getDefaultColor(II)I

    move-result v4

    goto :goto_0

    .line 67
    .restart local v4    # "tab_bg_color":I
    .restart local v5    # "tab_focus_color":I
    :cond_2
    aget v3, v0, v8

    goto :goto_1
.end method

.method public getTabletTabItemBgDrawable()Landroid/graphics/drawable/Drawable;
    .locals 6

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/perm/kate/theme/ColorTheme;->Colors()[I

    move-result-object v0

    .line 76
    .local v0, "colors":[I
    iget v4, p0, Lcom/perm/kate/theme/ColorTheme;->theme:I

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/perm/kate/theme/ThemeColorsHelper;->getDefaultColor(II)I

    move-result v2

    .line 77
    .local v2, "tab_bg_color":I
    iget v4, p0, Lcom/perm/kate/theme/ColorTheme;->theme:I

    const/4 v5, 0x2

    invoke-static {v4, v5}, Lcom/perm/kate/theme/ThemeColorsHelper;->getDefaultColor(II)I

    move-result v3

    .line 78
    .local v3, "tab_focus_color":I
    const/4 v4, 0x0

    aget v1, v0, v4

    .line 79
    .local v1, "tab_active_color":I
    invoke-static {v2, v3, v1}, Lcom/perm/kate/theme/DrawableHelper;->getTabletTabItemBgDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    return-object v4
.end method

.method public getTabletTabItemTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/perm/kate/theme/ColorTheme;->theme:I

    invoke-static {v0}, Lcom/perm/kate/theme/ThemeColorsHelper;->getTabletTabItemTextColor(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public resetColor()V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/perm/kate/theme/ColorTheme;->colorHelper:Lcom/perm/kate/theme/ThemeColorsHelper;

    iget v1, p0, Lcom/perm/kate/theme/ColorTheme;->theme:I

    invoke-virtual {v0, v1}, Lcom/perm/kate/theme/ThemeColorsHelper;->setDefaultColors(I)V

    .line 44
    return-void
.end method

.method public setColors([I)V
    .locals 1
    .param p1, "colors"    # [I

    .prologue
    .line 39
    iget-object v0, p0, Lcom/perm/kate/theme/ColorTheme;->colorHelper:Lcom/perm/kate/theme/ThemeColorsHelper;

    invoke-virtual {v0, p1}, Lcom/perm/kate/theme/ThemeColorsHelper;->setColors([I)V

    .line 40
    return-void
.end method

.method public updateTheme(ILjava/lang/String;)V
    .locals 1
    .param p1, "theme"    # I
    .param p2, "key_theme"    # Ljava/lang/String;

    .prologue
    .line 47
    iput p1, p0, Lcom/perm/kate/theme/ColorTheme;->theme:I

    .line 48
    new-instance v0, Lcom/perm/kate/theme/ThemeColorsHelper;

    invoke-direct {v0, p1, p2}, Lcom/perm/kate/theme/ThemeColorsHelper;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/perm/kate/theme/ColorTheme;->colorHelper:Lcom/perm/kate/theme/ThemeColorsHelper;

    .line 49
    return-void
.end method
