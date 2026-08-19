.class public final Lcom/perm/utils/ScreenOrientationHelper;
.super Ljava/lang/Object;
.source "ScreenOrientationHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getOrientationFromResources(Landroid/content/Context;)I
    .locals 2

    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Orientation from resources "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Kate.ScreenOrientationH"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method private getOrientationManually(Landroid/content/Context;)I
    .locals 2

    const-string v0, "window"

    .line 28
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 29
    invoke-virtual {p1}, Landroid/view/Display;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/Display;->getHeight()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {p1}, Landroid/view/Display;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/Display;->getHeight()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    .line 33
    :cond_1
    invoke-virtual {p1}, Landroid/view/Display;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/Display;->getHeight()I

    move-result p1

    if-le v0, p1, :cond_2

    const/4 p1, 0x2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 37
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Orientation manually "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Kate.ScreenOrientationH"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method


# virtual methods
.method public getOrientation(Landroid/content/Context;)I
    .locals 2

    .line 14
    invoke-direct {p0, p1}, Lcom/perm/utils/ScreenOrientationHelper;->getOrientationFromResources(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 16
    :cond_0
    invoke-direct {p0, p1}, Lcom/perm/utils/ScreenOrientationHelper;->getOrientationManually(Landroid/content/Context;)I

    move-result v0

    :cond_1
    return v0
.end method
