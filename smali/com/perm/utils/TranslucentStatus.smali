.class public Lcom/perm/utils/TranslucentStatus;
.super Ljava/lang/Object;
.source "TranslucentStatus.java"


# direct methods
.method public static makeTranslucentStatus(Landroid/app/Activity;Z)V
    .locals 8
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "IsCustomTheme"    # Z

    .prologue
    .line 25
    :try_start_0
    sget-object v5, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "translucent_status"

    const/4 v7, 0x1

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_0

    .line 54
    :goto_0
    return-void

    .line 29
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 30
    .local v4, "w":Landroid/view/Window;
    const/high16 v5, 0x4000000

    const/high16 v6, 0x4000000

    invoke-virtual {v4, v5, v6}, Landroid/view/Window;->setFlags(II)V

    .line 35
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    const v6, 0x1020002

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 37
    const/4 v0, 0x0

    .line 38
    .local v0, "color":I
    if-nez p1, :cond_1

    .line 39
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .line 40
    .local v3, "typedValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    const v6, 0x7f010162

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v3, v7}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 41
    iget v0, v3, Landroid/util/TypedValue;->data:I

    .line 47
    .end local v3    # "typedValue":Landroid/util/TypedValue;
    :goto_1
    new-instance v2, Lcom/readystatesoftware/systembartint/SystemBarTintManager;

    invoke-direct {v2, p0}, Lcom/readystatesoftware/systembartint/SystemBarTintManager;-><init>(Landroid/app/Activity;)V

    .line 48
    .local v2, "tintManager":Lcom/readystatesoftware/systembartint/SystemBarTintManager;
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Lcom/readystatesoftware/systembartint/SystemBarTintManager;->setStatusBarTintEnabled(Z)V

    .line 49
    invoke-virtual {v2, v0}, Lcom/readystatesoftware/systembartint/SystemBarTintManager;->setStatusBarTintColor(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 50
    .end local v0    # "color":I
    .end local v2    # "tintManager":Lcom/readystatesoftware/systembartint/SystemBarTintManager;
    .end local v4    # "w":Landroid/view/Window;
    :catch_0
    move-exception v1

    .line 51
    .local v1, "th":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 52
    invoke-static {v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 43
    .end local v1    # "th":Ljava/lang/Throwable;
    .restart local v0    # "color":I
    .restart local v4    # "w":Landroid/view/Window;
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v5

    invoke-virtual {v5}, Lcom/perm/kate/theme/ColorTheme;->getHeaderBgColor()I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    goto :goto_1
.end method
