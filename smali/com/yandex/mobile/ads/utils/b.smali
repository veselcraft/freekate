.class public Lcom/yandex/mobile/ads/utils/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lcom/yandex/mobile/ads/utils/b$1;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/utils/b$1;-><init>()V

    sput-object v0, Lcom/yandex/mobile/ads/utils/b;->a:Ljava/util/Comparator;

    return-void
.end method

.method public static a(Landroid/view/View;Landroid/webkit/WebView;)V
    .locals 14

    .prologue
    const/16 v13, 0x10

    const/4 v2, 0x0

    .line 38
    invoke-static {p1}, Lcom/yandex/mobile/ads/utils/k;->a(Landroid/webkit/WebView;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 39
    if-nez v0, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 40
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 41
    return-void

    .line 39
    :cond_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    filled-new-array {v13, v13, v13}, [I

    move-result-object v1

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, [[[I

    move v4, v2

    :goto_1
    if-ge v4, v13, :cond_3

    move v3, v2

    :goto_2
    if-ge v3, v13, :cond_2

    move v1, v2

    :goto_3
    if-ge v1, v13, :cond_1

    aget-object v5, v8, v1

    aget-object v5, v5, v3

    aput v2, v5, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    mul-int v10, v3, v7

    new-array v1, v10, [I

    move v4, v2

    move v5, v2

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    move v4, v2

    :goto_4
    if-ge v4, v7, :cond_6

    move v0, v2

    :goto_5
    if-ge v0, v3, :cond_5

    mul-int v5, v4, v3

    add-int/2addr v5, v0

    aget v5, v1, v5

    invoke-static {v5}, Landroid/graphics/Color;->alpha(I)I

    move-result v6

    const/16 v11, 0xff

    if-eq v6, v11, :cond_4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v6

    int-to-float v6, v6

    int-to-float v11, v10

    const v12, 0x3dcccccd    # 0.1f

    mul-float/2addr v11, v12

    cmpl-float v6, v6, v11

    if-ltz v6, :cond_4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-static {v5}, Landroid/graphics/Color;->red(I)I

    move-result v6

    div-int/lit8 v6, v6, 0x10

    invoke-static {v5}, Landroid/graphics/Color;->green(I)I

    move-result v11

    div-int/lit8 v11, v11, 0x10

    invoke-static {v5}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    div-int/lit8 v5, v5, 0x10

    aget-object v12, v8, v6

    aget-object v12, v12, v11

    aget-object v6, v8, v6

    aget-object v6, v6, v11

    aget v6, v6, v5

    add-int/lit8 v6, v6, 0x1

    aput v6, v12, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_5
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_4

    :cond_6
    new-instance v4, Ljava/util/HashMap;

    const/16 v0, 0x1000

    invoke-direct {v4, v0}, Ljava/util/HashMap;-><init>(I)V

    move v3, v2

    :goto_6
    if-ge v3, v13, :cond_a

    move v1, v2

    :goto_7
    if-ge v1, v13, :cond_9

    move v0, v2

    :goto_8
    if-ge v0, v13, :cond_8

    aget-object v5, v8, v0

    aget-object v5, v5, v1

    aget v5, v5, v3

    if-lez v5, :cond_7

    shl-int/lit8 v6, v0, 0x4

    shl-int/lit8 v7, v1, 0x4

    shl-int/lit8 v9, v3, 0x4

    invoke-static {v6, v7, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_8
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    :cond_9
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_6

    :cond_a
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Lcom/yandex/mobile/ads/utils/b;->a:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    goto/16 :goto_0
.end method
