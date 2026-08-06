.class public final Lcom/yandex/metrica/impl/aj;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/metrica/impl/aj$a;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;)Lcom/yandex/metrica/a;
    .locals 6

    .prologue
    .line 106
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 108
    invoke-static {p0}, Lcom/yandex/metrica/impl/aj;->e(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v1

    .line 110
    iget v2, v1, Landroid/graphics/Point;->x:I

    .line 111
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 113
    int-to-float v3, v2

    iget v4, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v3, v4

    .line 114
    int-to-float v4, v1

    iget v5, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v4, v5

    .line 115
    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 117
    int-to-float v2, v2

    iget v4, v0, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr v2, v4

    .line 118
    int-to-float v1, v1

    iget v0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    div-float v0, v1, v0

    .line 119
    mul-float v1, v2, v2

    mul-float/2addr v0, v0

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    .line 121
    const-wide/high16 v0, 0x402e000000000000L    # 15.0

    cmpl-double v0, v4, v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.touchscreen"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    .line 122
    sget-object v0, Lcom/yandex/metrica/a;->c:Lcom/yandex/metrica/a;

    .line 129
    :goto_1
    return-object v0

    .line 121
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 125
    :cond_1
    const-wide/high16 v0, 0x401c000000000000L    # 7.0

    cmpl-double v0, v4, v0

    if-gez v0, :cond_2

    const/high16 v0, 0x44160000    # 600.0f

    cmpl-float v0, v3, v0

    if-ltz v0, :cond_3

    .line 126
    :cond_2
    sget-object v0, Lcom/yandex/metrica/a;->b:Lcom/yandex/metrica/a;

    goto :goto_1

    .line 129
    :cond_3
    sget-object v0, Lcom/yandex/metrica/a;->a:Lcom/yandex/metrica/a;

    goto :goto_1
.end method

.method public static a(Landroid/content/Context;Lcom/yandex/metrica/impl/g;)V
    .locals 2

    .prologue
    .line 248
    invoke-static {p0}, Lcom/yandex/metrica/impl/bk;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/bk;->c()Lcom/yandex/metrica/impl/bk$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/metrica/impl/bk$a;->f()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/yandex/metrica/impl/g;->a(Ljava/lang/Integer;)Lcom/yandex/metrica/impl/g;

    move-result-object v0

    invoke-static {p0}, Lcom/yandex/metrica/impl/bn;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/bn;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/bn;->a()Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/g;->d(Ljava/lang/String;)Lcom/yandex/metrica/impl/g;

    move-result-object v0

    invoke-static {p0}, Lcom/yandex/metrica/impl/z;->a(Landroid/content/Context;)Lcom/yandex/metrica/impl/z;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/metrica/impl/z;->d()Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/metrica/impl/g;->a(Landroid/location/Location;)Lcom/yandex/metrica/impl/g;

    .line 252
    return-void
.end method

.method public static b(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 213
    invoke-static {p0}, Lcom/yandex/metrica/impl/aj;->e(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    return v0
.end method

.method public static c(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 217
    invoke-static {p0}, Lcom/yandex/metrica/impl/aj;->e(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    return v0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 221
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 223
    const/4 v1, 0x2

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 224
    const-string v1, "_"

    const-string v2, "-"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 227
    :cond_0
    return-object v0
.end method

.method private static e(Landroid/content/Context;)Landroid/graphics/Point;
    .locals 5

    .prologue
    .line 142
    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 143
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 147
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 149
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 150
    invoke-virtual {v2, v0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 151
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 152
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 172
    :goto_0
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v1, v0}, Landroid/graphics/Point;-><init>(II)V

    return-object v2

    .line 154
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 157
    :try_start_0
    const-class v0, Landroid/view/Display;

    const-string v1, "getRawHeight"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 158
    const-class v0, Landroid/view/Display;

    const-string v1, "getRawWidth"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 159
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 160
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v3, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 163
    :catch_0
    move-exception v0

    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 164
    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v0

    goto :goto_0

    .line 168
    :cond_1
    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 169
    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v0

    goto :goto_0
.end method
