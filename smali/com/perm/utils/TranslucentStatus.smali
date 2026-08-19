.class public abstract Lcom/perm/utils/TranslucentStatus;
.super Ljava/lang/Object;
.source "TranslucentStatus.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# direct methods
.method public static makeTranslucentStatus(Landroid/app/Activity;Z)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .line 27
    :try_start_0
    sget-object v0, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "translucent_status"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 31
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x4000000

    .line 32
    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 37
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setFitsSystemWindows(Z)V

    if-nez p1, :cond_1

    .line 41
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 42
    invoke-virtual {p0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const v1, 0x7f04003e

    invoke-virtual {v0, v1, p1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 43
    iget p1, p1, Landroid/util/TypedValue;->data:I

    goto :goto_0

    .line 45
    :cond_1
    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object p1

    invoke-virtual {p1}, Lcom/perm/kate/theme/ColorTheme;->getHeaderBgColor()I

    move-result p1

    .line 49
    :goto_0
    new-instance v0, Lcom/readystatesoftware/systembartint/SystemBarTintManager;

    invoke-direct {v0, p0}, Lcom/readystatesoftware/systembartint/SystemBarTintManager;-><init>(Landroid/app/Activity;)V

    .line 50
    invoke-virtual {v0, v2}, Lcom/readystatesoftware/systembartint/SystemBarTintManager;->setStatusBarTintEnabled(Z)V

    .line 51
    invoke-virtual {v0, p1}, Lcom/readystatesoftware/systembartint/SystemBarTintManager;->setStatusBarTintColor(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 53
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 54
    invoke-static {p0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
