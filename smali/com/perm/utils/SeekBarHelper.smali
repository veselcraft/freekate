.class public abstract Lcom/perm/utils/SeekBarHelper;
.super Ljava/lang/Object;
.source "SeekBarHelper.java"


# direct methods
.method public static setSeekBarColor(Landroid/widget/SeekBar;I)V
    .locals 4

    .line 41
    :try_start_0
    invoke-static {p1}, Lcom/perm/kate/theme/ThemeColorsHelper;->getSeekBarColor(I)I

    move-result p1

    .line 43
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    .line 47
    instance-of v2, v0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v2, :cond_0

    .line 48
    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    goto :goto_0

    .line 49
    :cond_0
    instance-of v2, v0, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v2, :cond_1

    .line 51
    move-object v2, v0

    check-cast v2, Landroid/graphics/drawable/StateListDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/StateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 52
    instance-of v3, v2, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v3, :cond_1

    .line 53
    move-object v1, v2

    check-cast v1, Landroid/graphics/drawable/LayerDrawable;

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 57
    invoke-virtual {v1}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    add-int/lit8 v2, v0, -0x1

    .line 58
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 59
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, p1, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 62
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_3

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    const/4 v0, 0x1

    .line 63
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 64
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_1

    .line 67
    :cond_2
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 70
    :cond_3
    :goto_1
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 72
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p0, p1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 74
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 75
    invoke-static {p0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    return-void
.end method
