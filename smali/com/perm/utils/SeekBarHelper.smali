.class public Lcom/perm/utils/SeekBarHelper;
.super Ljava/lang/Object;
.source "SeekBarHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perm/utils/SeekBarHelper$SeekBarThumbHelper;
    }
.end annotation


# direct methods
.method public static setSeekBarColor(Landroid/widget/SeekBar;I)V
    .locals 13
    .param p0, "seekBar"    # Landroid/widget/SeekBar;
    .param p1, "theme"    # I

    .prologue
    .line 42
    :try_start_0
    invoke-static {p1}, Lcom/perm/kate/theme/ThemeColorsHelper;->getSeekBarColor(I)I

    move-result v1

    .line 44
    .local v1, "color":I
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 45
    .local v6, "dprogress":Landroid/graphics/drawable/Drawable;
    if-eqz v6, :cond_1

    .line 46
    const/4 v7, 0x0

    .line 48
    .local v7, "ld":Landroid/graphics/drawable/LayerDrawable;
    instance-of v11, v6, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v11, :cond_3

    .line 49
    move-object v0, v6

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    move-object v7, v0

    .line 56
    :cond_0
    :goto_0
    if-eqz v7, :cond_4

    .line 58
    invoke-virtual {v7}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v10

    .line 59
    .local v10, "top_inndex":I
    add-int/lit8 v11, v10, -0x1

    invoke-virtual {v7, v11}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 60
    .local v3, "d1":Landroid/graphics/drawable/Drawable;
    sget-object v11, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v1, v11}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 63
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0x15

    if-ge v11, v12, :cond_1

    const/4 v11, 0x3

    if-ne v10, v11, :cond_1

    .line 64
    const/4 v11, 0x1

    invoke-virtual {v7, v11}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 65
    .local v5, "dloaded":Landroid/graphics/drawable/Drawable;
    sget-object v11, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v1, v11}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 72
    .end local v3    # "d1":Landroid/graphics/drawable/Drawable;
    .end local v5    # "dloaded":Landroid/graphics/drawable/Drawable;
    .end local v7    # "ld":Landroid/graphics/drawable/LayerDrawable;
    .end local v10    # "top_inndex":I
    :cond_1
    :goto_1
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0xf

    if-le v11, v12, :cond_5

    .line 73
    invoke-static {p0}, Lcom/perm/utils/SeekBarHelper$SeekBarThumbHelper;->getThumb(Landroid/widget/SeekBar;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 74
    .local v9, "thumb":Landroid/graphics/drawable/Drawable;
    if-eqz v9, :cond_2

    .line 75
    sget-object v11, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v9, v1, v11}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 86
    .end local v1    # "color":I
    .end local v6    # "dprogress":Landroid/graphics/drawable/Drawable;
    .end local v9    # "thumb":Landroid/graphics/drawable/Drawable;
    :cond_2
    :goto_2
    return-void

    .line 50
    .restart local v1    # "color":I
    .restart local v6    # "dprogress":Landroid/graphics/drawable/Drawable;
    .restart local v7    # "ld":Landroid/graphics/drawable/LayerDrawable;
    :cond_3
    instance-of v11, v6, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v11, :cond_0

    .line 52
    move-object v0, v6

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    move-object v11, v0

    invoke-virtual {v11}, Landroid/graphics/drawable/StateListDrawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 53
    .local v4, "dcurrent":Landroid/graphics/drawable/Drawable;
    if-eqz v4, :cond_0

    instance-of v11, v4, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v11, :cond_0

    .line 54
    move-object v0, v4

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    move-object v7, v0

    goto :goto_0

    .line 68
    .end local v4    # "dcurrent":Landroid/graphics/drawable/Drawable;
    :cond_4
    sget-object v11, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, v1, v11}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 82
    .end local v1    # "color":I
    .end local v6    # "dprogress":Landroid/graphics/drawable/Drawable;
    .end local v7    # "ld":Landroid/graphics/drawable/LayerDrawable;
    :catch_0
    move-exception v8

    .line 83
    .local v8, "th":Ljava/lang/Throwable;
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    .line 84
    invoke-static {v8}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 78
    .end local v8    # "th":Ljava/lang/Throwable;
    .restart local v1    # "color":I
    .restart local v6    # "dprogress":Landroid/graphics/drawable/Drawable;
    :cond_5
    :try_start_1
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f020037

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 79
    .local v2, "custom_thumb":Landroid/graphics/drawable/Drawable;
    sget-object v11, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v1, v11}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 80
    invoke-virtual {p0, v2}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method
