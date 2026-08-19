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

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Lcom/perm/kate/theme/ColorTheme;->theme:I

    .line 31
    new-instance v0, Lcom/perm/kate/theme/ThemeColorsHelper;

    sget-object v1, Lcom/perm/kate/BaseActivity;->theme_id:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lcom/perm/kate/theme/ThemeColorsHelper;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/perm/kate/theme/ColorTheme;->colorHelper:Lcom/perm/kate/theme/ThemeColorsHelper;

    return-void
.end method

.method public static getColorTheme()Lcom/perm/kate/theme/ColorTheme;
    .locals 2

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

.method private getNotifyBgColor(Z)I
    .locals 1

    if-eqz p1, :cond_1

    .line 105
    iget p1, p0, Lcom/perm/kate/theme/ColorTheme;->theme:I

    invoke-static {p1}, Lcom/perm/kate/theme/ThemeColorsHelper;->isMaterial(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/perm/kate/theme/ColorTheme;->Colors()[I

    move-result-object p1

    const/4 v0, 0x1

    aget p1, p1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/perm/kate/theme/ColorTheme;->Colors()[I

    move-result-object p1

    const/4 v0, 0x0

    aget p1, p1, v0

    :goto_0
    return p1

    .line 109
    :cond_1
    iget p1, p0, Lcom/perm/kate/theme/ColorTheme;->theme:I

    invoke-static {p1}, Lcom/perm/kate/theme/ThemeColorsHelper;->getNotifyBgColor(I)I

    move-result p1

    return p1
.end method

.method public static reset()V
    .locals 1

    const/4 v0, 0x0

    .line 23
    sput-object v0, Lcom/perm/kate/theme/ColorTheme;->colorTheme:Lcom/perm/kate/theme/ColorTheme;

    return-void
.end method


# virtual methods
.method public Colors()[I
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/perm/kate/theme/ColorTheme;->colorHelper:Lcom/perm/kate/theme/ThemeColorsHelper;

    invoke-virtual {v0}, Lcom/perm/kate/theme/ThemeColorsHelper;->getThemeColors()[I

    move-result-object v0

    return-object v0
.end method

.method public getButtonBgDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 57
    invoke-virtual {p0}, Lcom/perm/kate/theme/ColorTheme;->Colors()[I

    move-result-object v0

    const/4 v1, 0x0

    .line 58
    aget v0, v0, v1

    .line 59
    invoke-static {v0}, Lcom/perm/kate/theme/DrawableHelper;->getButtonBgDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getFloatingActionButtonBgDrawable()Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 93
    invoke-virtual {p0}, Lcom/perm/kate/theme/ColorTheme;->Colors()[I

    move-result-object v0

    const/4 v1, 0x0

    .line 94
    aget v1, v0, v1

    .line 95
    iget v2, p0, Lcom/perm/kate/theme/ColorTheme;->theme:I

    invoke-static {v2}, Lcom/perm/kate/theme/ThemeColorsHelper;->isMaterial(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    aget v1, v0, v1

    .line 96
    :cond_0
    invoke-static {v1}, Lcom/perm/kate/theme/DrawableHelper;->getFloatingActionButtonBgDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderBgColor()I
    .locals 2

    .line 52
    invoke-virtual {p0}, Lcom/perm/kate/theme/ColorTheme;->Colors()[I

    move-result-object v0

    const/4 v1, 0x0

    .line 53
    aget v0, v0, v1

    return v0
.end method

.method public getHeaderBottomLineDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 87
    invoke-virtual {p0}, Lcom/perm/kate/theme/ColorTheme;->Colors()[I

    move-result-object v0

    const/4 v1, 0x0

    .line 88
    aget v0, v0, v1

    .line 89
    invoke-static {v0}, Lcom/perm/kate/theme/DrawableHelper;->getHeaderBottomLineDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getLikeColor()I
    .locals 1

    .line 113
    sget-boolean v0, Lcom/perm/kate/BaseActivity;->IsCustomTheme:Z

    invoke-direct {p0, v0}, Lcom/perm/kate/theme/ColorTheme;->getNotifyBgColor(Z)I

    move-result v0

    return v0
.end method

.method public getNotifyBg(ZZ)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 100
    invoke-direct {p0, p1}, Lcom/perm/kate/theme/ColorTheme;->getNotifyBgColor(Z)I

    move-result p1

    invoke-static {p1, p2}, Lcom/perm/kate/theme/DrawableHelper;->getNotifyBg(IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getTabItemBgDrawable()Landroid/graphics/drawable/Drawable;
    .locals 7

    .line 63
    iget v0, p0, Lcom/perm/kate/theme/ColorTheme;->theme:I

    invoke-static {v0}, Lcom/perm/kate/theme/ThemeColorsHelper;->isMaterial(I)Z

    move-result v0

    .line 64
    invoke-virtual {p0}, Lcom/perm/kate/theme/ColorTheme;->Colors()[I

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 65
    aget v4, v1, v3

    goto :goto_0

    :cond_0
    iget v4, p0, Lcom/perm/kate/theme/ColorTheme;->theme:I

    invoke-static {v4, v2}, Lcom/perm/kate/theme/ThemeColorsHelper;->getDefaultColor(II)I

    move-result v4

    .line 66
    :goto_0
    iget v5, p0, Lcom/perm/kate/theme/ColorTheme;->theme:I

    const/4 v6, 0x2

    invoke-static {v5, v6}, Lcom/perm/kate/theme/ThemeColorsHelper;->getDefaultColor(II)I

    move-result v5

    if-eqz v0, :cond_1

    .line 67
    aget v1, v1, v2

    goto :goto_1

    :cond_1
    aget v1, v1, v3

    .line 69
    :goto_1
    iget v2, p0, Lcom/perm/kate/theme/ColorTheme;->theme:I

    const v6, 0x7f1000df

    if-ne v2, v6, :cond_2

    .line 70
    sget-object v2, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-virtual {v2}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0700eb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v3, v2

    .line 71
    :cond_2
    invoke-static {v4, v5, v1, v0, v3}, Lcom/perm/kate/theme/DrawableHelper;->getTabItemBgDrawable(IIIZI)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getTabletTabItemBgDrawable()Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 75
    invoke-virtual {p0}, Lcom/perm/kate/theme/ColorTheme;->Colors()[I

    move-result-object v0

    .line 76
    iget v1, p0, Lcom/perm/kate/theme/ColorTheme;->theme:I

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/perm/kate/theme/ThemeColorsHelper;->getDefaultColor(II)I

    move-result v1

    .line 77
    iget v2, p0, Lcom/perm/kate/theme/ColorTheme;->theme:I

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/perm/kate/theme/ThemeColorsHelper;->getDefaultColor(II)I

    move-result v2

    const/4 v3, 0x0

    .line 78
    aget v0, v0, v3

    .line 79
    invoke-static {v1, v2, v0}, Lcom/perm/kate/theme/DrawableHelper;->getTabletTabItemBgDrawable(III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getTabletTabItemTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 83
    iget v0, p0, Lcom/perm/kate/theme/ColorTheme;->theme:I

    invoke-static {v0}, Lcom/perm/kate/theme/ThemeColorsHelper;->getTabletTabItemTextColor(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public resetColor()V
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/perm/kate/theme/ColorTheme;->colorHelper:Lcom/perm/kate/theme/ThemeColorsHelper;

    iget v1, p0, Lcom/perm/kate/theme/ColorTheme;->theme:I

    invoke-virtual {v0, v1}, Lcom/perm/kate/theme/ThemeColorsHelper;->setDefaultColors(I)V

    return-void
.end method

.method public setColors([I)V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/perm/kate/theme/ColorTheme;->colorHelper:Lcom/perm/kate/theme/ThemeColorsHelper;

    invoke-virtual {v0, p1}, Lcom/perm/kate/theme/ThemeColorsHelper;->setColors([I)V

    return-void
.end method

.method public updateTheme(ILjava/lang/String;)V
    .locals 1

    .line 47
    iput p1, p0, Lcom/perm/kate/theme/ColorTheme;->theme:I

    .line 48
    new-instance v0, Lcom/perm/kate/theme/ThemeColorsHelper;

    invoke-direct {v0, p1, p2}, Lcom/perm/kate/theme/ThemeColorsHelper;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/perm/kate/theme/ColorTheme;->colorHelper:Lcom/perm/kate/theme/ThemeColorsHelper;

    return-void
.end method
