.class public Lcom/yandex/mobile/ads/network/core/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/network/core/k$a;,
        Lcom/yandex/mobile/ads/network/core/k$c;,
        Lcom/yandex/mobile/ads/network/core/k$d;,
        Lcom/yandex/mobile/ads/network/core/k$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/network/core/r;

.field private b:I

.field private final c:Lcom/yandex/mobile/ads/network/core/k$b;

.field private final d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/yandex/mobile/ads/network/core/k$a;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/yandex/mobile/ads/network/core/k$a;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Landroid/os/Handler;

.field private g:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/network/core/r;Lcom/yandex/mobile/ads/network/core/k$b;)V
    .locals 2

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/16 v0, 0x64

    iput v0, p0, Lcom/yandex/mobile/ads/network/core/k;->b:I

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yandex/mobile/ads/network/core/k;->d:Ljava/util/HashMap;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/yandex/mobile/ads/network/core/k;->e:Ljava/util/HashMap;

    .line 61
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/yandex/mobile/ads/network/core/k;->f:Landroid/os/Handler;

    .line 82
    iput-object p1, p0, Lcom/yandex/mobile/ads/network/core/k;->a:Lcom/yandex/mobile/ads/network/core/r;

    .line 83
    iput-object p2, p0, Lcom/yandex/mobile/ads/network/core/k;->c:Lcom/yandex/mobile/ads/network/core/k$b;

    .line 84
    return-void
.end method

.method static synthetic a(Lcom/yandex/mobile/ads/network/core/k;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/yandex/mobile/ads/network/core/k;->g:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic a(Lcom/yandex/mobile/ads/network/core/k;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/yandex/mobile/ads/network/core/k;->e:Ljava/util/HashMap;

    return-object v0
.end method

.method private a(Ljava/lang/String;Lcom/yandex/mobile/ads/network/core/k$a;)V
    .locals 4

    .prologue
    .line 454
    iget-object v0, p0, Lcom/yandex/mobile/ads/network/core/k;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    iget-object v0, p0, Lcom/yandex/mobile/ads/network/core/k;->g:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 458
    new-instance v0, Lcom/yandex/mobile/ads/network/core/k$3;

    invoke-direct {v0, p0}, Lcom/yandex/mobile/ads/network/core/k$3;-><init>(Lcom/yandex/mobile/ads/network/core/k;)V

    iput-object v0, p0, Lcom/yandex/mobile/ads/network/core/k;->g:Ljava/lang/Runnable;

    .line 483
    iget-object v0, p0, Lcom/yandex/mobile/ads/network/core/k;->f:Landroid/os/Handler;

    iget-object v1, p0, Lcom/yandex/mobile/ads/network/core/k;->g:Ljava/lang/Runnable;

    iget v2, p0, Lcom/yandex/mobile/ads/network/core/k;->b:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 485
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/yandex/mobile/ads/network/core/k$d;)Lcom/yandex/mobile/ads/network/core/k$c;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 179
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/yandex/mobile/ads/network/core/k;->a(Ljava/lang/String;Lcom/yandex/mobile/ads/network/core/k$d;II)Lcom/yandex/mobile/ads/network/core/k$c;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Lcom/yandex/mobile/ads/network/core/k$d;II)Lcom/yandex/mobile/ads/network/core/k$c;
    .locals 6

    .prologue
    .line 188
    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/yandex/mobile/ads/network/core/k;->a(Ljava/lang/String;Lcom/yandex/mobile/ads/network/core/k$d;IILandroid/widget/ImageView$ScaleType;)Lcom/yandex/mobile/ads/network/core/k$c;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Lcom/yandex/mobile/ads/network/core/k$d;IILandroid/widget/ImageView$ScaleType;)Lcom/yandex/mobile/ads/network/core/k$c;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 208
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ImageLoader must be invoked from the main thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 210
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0xc

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "#W"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#H"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "#S"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p5}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 213
    iget-object v0, p0, Lcom/yandex/mobile/ads/network/core/k;->c:Lcom/yandex/mobile/ads/network/core/k$b;

    invoke-interface {v0, v5}, Lcom/yandex/mobile/ads/network/core/k$b;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 214
    if-eqz v1, :cond_1

    .line 216
    new-instance v0, Lcom/yandex/mobile/ads/network/core/k$c;

    invoke-direct {v0, v1, v2}, Lcom/yandex/mobile/ads/network/core/k$c;-><init>(Landroid/graphics/Bitmap;Lcom/yandex/mobile/ads/network/core/k$d;)V

    .line 217
    invoke-interface {p2, v0}, Lcom/yandex/mobile/ads/network/core/k$d;->a(Lcom/yandex/mobile/ads/network/core/k$c;)V

    .line 244
    :goto_0
    return-object v0

    .line 222
    :cond_1
    new-instance v6, Lcom/yandex/mobile/ads/network/core/k$c;

    invoke-direct {v6, v2, p2}, Lcom/yandex/mobile/ads/network/core/k$c;-><init>(Landroid/graphics/Bitmap;Lcom/yandex/mobile/ads/network/core/k$d;)V

    .line 226
    invoke-interface {p2, v6}, Lcom/yandex/mobile/ads/network/core/k$d;->a(Lcom/yandex/mobile/ads/network/core/k$c;)V

    .line 229
    iget-object v0, p0, Lcom/yandex/mobile/ads/network/core/k;->d:Ljava/util/HashMap;

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/network/core/k$a;

    .line 230
    if-eqz v0, :cond_2

    .line 232
    invoke-virtual {v0, v6}, Lcom/yandex/mobile/ads/network/core/k$a;->a(Lcom/yandex/mobile/ads/network/core/k$c;)V

    move-object v0, v6

    .line 233
    goto :goto_0

    :cond_2
    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move v3, p4

    move-object v4, p5

    .line 238
    invoke-virtual/range {v0 .. v5}, Lcom/yandex/mobile/ads/network/core/k;->a(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;Ljava/lang/String;)Lcom/yandex/mobile/ads/network/core/q;

    move-result-object v0

    .line 241
    iget-object v1, p0, Lcom/yandex/mobile/ads/network/core/k;->a:Lcom/yandex/mobile/ads/network/core/r;

    invoke-virtual {v1, v0}, Lcom/yandex/mobile/ads/network/core/r;->a(Lcom/yandex/mobile/ads/network/core/q;)Lcom/yandex/mobile/ads/network/core/q;

    .line 242
    iget-object v0, p0, Lcom/yandex/mobile/ads/network/core/k;->d:Ljava/util/HashMap;

    new-instance v1, Lcom/yandex/mobile/ads/network/core/k$a;

    invoke-direct {v1, v6}, Lcom/yandex/mobile/ads/network/core/k$a;-><init>(Lcom/yandex/mobile/ads/network/core/k$c;)V

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v6

    .line 244
    goto :goto_0
.end method

.method protected a(Ljava/lang/String;IILandroid/widget/ImageView$ScaleType;Ljava/lang/String;)Lcom/yandex/mobile/ads/network/core/q;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Landroid/widget/ImageView$ScaleType;",
            "Ljava/lang/String;",
            ")",
            "Lcom/yandex/mobile/ads/network/core/q",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 249
    new-instance v0, Lcom/yandex/mobile/ads/network/core/l;

    new-instance v2, Lcom/yandex/mobile/ads/network/core/k$1;

    invoke-direct {v2, p0, p5}, Lcom/yandex/mobile/ads/network/core/k$1;-><init>(Lcom/yandex/mobile/ads/network/core/k;Ljava/lang/String;)V

    sget-object v6, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    new-instance v7, Lcom/yandex/mobile/ads/network/core/k$2;

    invoke-direct {v7, p0, p5}, Lcom/yandex/mobile/ads/network/core/k$2;-><init>(Lcom/yandex/mobile/ads/network/core/k;Ljava/lang/String;)V

    move-object v1, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/yandex/mobile/ads/network/core/l;-><init>(Ljava/lang/String;Lcom/yandex/mobile/ads/network/core/s$b;IILandroid/widget/ImageView$ScaleType;Landroid/graphics/Bitmap$Config;Lcom/yandex/mobile/ads/network/core/s$a;)V

    return-object v0
.end method

.method protected a(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/yandex/mobile/ads/network/core/k;->c:Lcom/yandex/mobile/ads/network/core/k$b;

    invoke-interface {v0, p1, p2}, Lcom/yandex/mobile/ads/network/core/k$b;->a(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 281
    iget-object v0, p0, Lcom/yandex/mobile/ads/network/core/k;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/network/core/k$a;

    .line 283
    if-eqz v0, :cond_0

    .line 285
    invoke-static {v0, p2}, Lcom/yandex/mobile/ads/network/core/k$a;->a(Lcom/yandex/mobile/ads/network/core/k$a;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 288
    invoke-direct {p0, p1, v0}, Lcom/yandex/mobile/ads/network/core/k;->a(Ljava/lang/String;Lcom/yandex/mobile/ads/network/core/k$a;)V

    .line 290
    :cond_0
    return-void
.end method

.method protected a(Ljava/lang/String;Lcom/yandex/mobile/ads/network/core/error/h;)V
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcom/yandex/mobile/ads/network/core/k;->d:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/network/core/k$a;

    .line 301
    if-eqz v0, :cond_0

    .line 303
    invoke-virtual {v0, p2}, Lcom/yandex/mobile/ads/network/core/k$a;->a(Lcom/yandex/mobile/ads/network/core/error/h;)V

    .line 306
    invoke-direct {p0, p1, v0}, Lcom/yandex/mobile/ads/network/core/k;->a(Ljava/lang/String;Lcom/yandex/mobile/ads/network/core/k$a;)V

    .line 308
    :cond_0
    return-void
.end method
