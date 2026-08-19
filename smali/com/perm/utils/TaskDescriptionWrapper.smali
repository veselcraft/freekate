.class public abstract Lcom/perm/utils/TaskDescriptionWrapper;
.super Ljava/lang/Object;
.source "TaskDescriptionWrapper.java"


# static fields
.field private static taskDescription:Landroid/app/ActivityManager$TaskDescription;


# direct methods
.method public static resetTaskDescription()V
    .locals 1

    const/4 v0, 0x0

    .line 43
    sput-object v0, Lcom/perm/utils/TaskDescriptionWrapper;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    return-void
.end method

.method public static setTaskDescription(Landroid/app/Activity;)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 22
    :try_start_0
    invoke-static {}, Lcom/perm/kate/theme/ColorTheme;->getColorTheme()Lcom/perm/kate/theme/ColorTheme;

    move-result-object v0

    invoke-virtual {v0}, Lcom/perm/kate/theme/ColorTheme;->getHeaderBgColor()I

    move-result v0

    const/high16 v1, -0x1000000

    and-int v2, v0, v1

    if-eqz v2, :cond_0

    if-eq v2, v1, :cond_0

    return-void

    .line 31
    :cond_0
    sget-object v1, Lcom/perm/utils/TaskDescriptionWrapper;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    if-nez v1, :cond_1

    .line 32
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0801ef

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 33
    new-instance v2, Landroid/app/ActivityManager$TaskDescription;

    const v3, 0x7f0f004c

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1, v0}, Landroid/app/ActivityManager$TaskDescription;-><init>(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    sput-object v2, Lcom/perm/utils/TaskDescriptionWrapper;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 35
    :cond_1
    sget-object v0, Lcom/perm/utils/TaskDescriptionWrapper;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 37
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 38
    invoke-static {p0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
