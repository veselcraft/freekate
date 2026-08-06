.class public Lcom/perm/utils/TaskDescriptionWrapper;
.super Ljava/lang/Object;
.source "TaskDescriptionWrapper.java"


# static fields
.field private static taskDescription:Landroid/app/ActivityManager$TaskDescription;


# direct methods
.method public static resetTaskDescription()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    sput-object v0, Lcom/perm/utils/TaskDescriptionWrapper;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 44
    return-void
.end method

.method public static setTaskDescription(Landroid/app/Activity;)V
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/high16 v5, -0x1000000

    .line 22
    :try_start_0
    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v4

    invoke-virtual {v4}, Lcom/perm/kate/theme/ColorTheme;->getHeaderBgColor()I

    move-result v1

    .line 27
    .local v1, "color":I
    and-int v3, v1, v5

    .line 28
    .local v3, "transparency":I
    if-eqz v3, :cond_0

    if-eq v3, v5, :cond_0

    .line 40
    .end local v1    # "color":I
    .end local v3    # "transparency":I
    :goto_0
    return-void

    .line 31
    .restart local v1    # "color":I
    .restart local v3    # "transparency":I
    :cond_0
    sget-object v4, Lcom/perm/utils/TaskDescriptionWrapper;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    if-nez v4, :cond_1

    .line 32
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f020130

    invoke-static {v4, v5}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 33
    .local v0, "bm":Landroid/graphics/Bitmap;
    new-instance v4, Landroid/app/ActivityManager$TaskDescription;

    const v5, 0x7f070527

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0, v1}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    sput-object v4, Lcom/perm/utils/TaskDescriptionWrapper;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 35
    .end local v0    # "bm":Landroid/graphics/Bitmap;
    :cond_1
    sget-object v4, Lcom/perm/utils/TaskDescriptionWrapper;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {p0, v4}, Landroid/app/Activity;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 36
    .end local v1    # "color":I
    .end local v3    # "transparency":I
    :catch_0
    move-exception v2

    .line 37
    .local v2, "th":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 38
    invoke-static {v2}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
