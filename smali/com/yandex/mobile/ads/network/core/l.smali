.class public Lcom/yandex/mobile/ads/network/core/l;
.super Lcom/yandex/mobile/ads/network/core/q;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yandex/mobile/ads/network/core/q",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field private static final f:Ljava/lang/Object;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/network/core/s$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yandex/mobile/ads/network/core/s$b",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Landroid/graphics/Bitmap$Config;

.field private final c:I

.field private final d:I

.field private e:Landroid/widget/ImageView$ScaleType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/yandex/mobile/ads/network/core/l;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/yandex/mobile/ads/network/core/s$b;IILandroid/widget/ImageView$ScaleType;Landroid/graphics/Bitmap$Config;Lcom/yandex/mobile/ads/network/core/s$a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/yandex/mobile/ads/network/core/s$b",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;II",
            "Landroid/widget/ImageView$ScaleType;",
            "Landroid/graphics/Bitmap$Config;",
            "Lcom/yandex/mobile/ads/network/core/s$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p7}, Lcom/yandex/mobile/ads/network/core/q;-><init>(ILjava/lang/String;Lcom/yandex/mobile/ads/network/core/s$a;)V

    .line 70
    new-instance v0, Lcom/yandex/mobile/ads/network/core/e;

    const/16 v1, 0x3e8

    const/4 v2, 0x2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {v0, v1, v2, v3}, Lcom/yandex/mobile/ads/network/core/e;-><init>(IIF)V

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/network/core/l;->a(Lcom/yandex/mobile/ads/network/core/u;)Lcom/yandex/mobile/ads/network/core/q;

    .line 72
    iput-object p2, p0, Lcom/yandex/mobile/ads/network/core/l;->a:Lcom/yandex/mobile/ads/network/core/s$b;

    .line 73
    iput-object p6, p0, Lcom/yandex/mobile/ads/network/core/l;->b:Landroid/graphics/Bitmap$Config;

    .line 74
    iput p3, p0, Lcom/yandex/mobile/ads/network/core/l;->c:I

    .line 75
    iput p4, p0, Lcom/yandex/mobile/ads/network/core/l;->d:I

    .line 76
    iput-object p5, p0, Lcom/yandex/mobile/ads/network/core/l;->e:Landroid/widget/ImageView$ScaleType;

    .line 77
    return-void
.end method

.method static a(IIII)I
    .locals 7

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 229
    int-to-double v0, p0

    int-to-double v2, p2

    div-double/2addr v0, v2

    .line 230
    int-to-double v2, p1

    int-to-double v4, p3

    div-double/2addr v2, v4

    .line 231
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    .line 232
    const/high16 v0, 0x3f800000    # 1.0f

    .line 233
    :goto_0
    mul-float v1, v0, v6

    float-to-double v4, v1

    cmpg-double v1, v4, v2

    if-gtz v1, :cond_0

    .line 234
    mul-float/2addr v0, v6

    goto :goto_0

    .line 237
    :cond_0
    float-to-int v0, v0

    return v0
.end method

.method private static a(IIIILandroid/widget/ImageView$ScaleType;)I
    .locals 6

    .prologue
    .line 110
    if-nez p0, :cond_1

    if-nez p1, :cond_1

    move p0, p2

    .line 146
    :cond_0
    :goto_0
    return p0

    .line 115
    :cond_1
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    if-ne p4, v0, :cond_2

    .line 116
    if-nez p0, :cond_0

    move p0, p2

    .line 117
    goto :goto_0

    .line 123
    :cond_2
    if-nez p0, :cond_3

    .line 124
    int-to-double v0, p1

    int-to-double v2, p3

    div-double/2addr v0, v2

    .line 125
    int-to-double v2, p2

    mul-double/2addr v0, v2

    double-to-int p0, v0

    goto :goto_0

    .line 128
    :cond_3
    if-eqz p1, :cond_0

    .line 132
    int-to-double v0, p3

    int-to-double v2, p2

    div-double/2addr v0, v2

    .line 136
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    if-ne p4, v2, :cond_4

    .line 137
    int-to-double v2, p0

    mul-double/2addr v2, v0

    int-to-double v4, p1

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    .line 138
    int-to-double v2, p1

    div-double v0, v2, v0

    double-to-int p0, v0

    goto :goto_0

    .line 143
    :cond_4
    int-to-double v2, p0

    mul-double/2addr v2, v0

    int-to-double v4, p1

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    .line 144
    int-to-double v2, p1

    div-double v0, v2, v0

    double-to-int p0, v0

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/yandex/mobile/ads/network/core/q$a;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/yandex/mobile/ads/network/core/q$a;->a:Lcom/yandex/mobile/ads/network/core/q$a;

    return-object v0
.end method

.method protected a(Lcom/yandex/mobile/ads/network/core/o;)Lcom/yandex/mobile/ads/network/core/s;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/network/core/o;",
            ")",
            "Lcom/yandex/mobile/ads/network/core/s",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 152
    sget-object v2, Lcom/yandex/mobile/ads/network/core/l;->f:Ljava/lang/Object;

    monitor-enter v2

    .line 154
    :try_start_0
    iget-object v0, p1, Lcom/yandex/mobile/ads/network/core/o;->b:[B

    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iget v3, p0, Lcom/yandex/mobile/ads/network/core/l;->c:I

    if-nez v3, :cond_0

    iget v3, p0, Lcom/yandex/mobile/ads/network/core/l;->d:I

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/yandex/mobile/ads/network/core/l;->b:Landroid/graphics/Bitmap$Config;

    iput-object v3, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x0

    array-length v4, v0

    invoke-static {v0, v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_3

    new-instance v0, Lcom/yandex/mobile/ads/network/core/error/e;

    invoke-direct {v0, p1}, Lcom/yandex/mobile/ads/network/core/error/e;-><init>(Lcom/yandex/mobile/ads/network/core/o;)V

    invoke-static {v0}, Lcom/yandex/mobile/ads/network/core/s;->a(Lcom/yandex/mobile/ads/network/core/error/h;)Lcom/yandex/mobile/ads/network/core/s;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :goto_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 157
    :goto_2
    return-object v0

    .line 154
    :cond_0
    const/4 v3, 0x1

    :try_start_2
    iput-boolean v3, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v3, 0x0

    array-length v4, v0

    invoke-static {v0, v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v5, p0, Lcom/yandex/mobile/ads/network/core/l;->c:I

    iget v6, p0, Lcom/yandex/mobile/ads/network/core/l;->d:I

    iget-object v7, p0, Lcom/yandex/mobile/ads/network/core/l;->e:Landroid/widget/ImageView$ScaleType;

    invoke-static {v5, v6, v3, v4, v7}, Lcom/yandex/mobile/ads/network/core/l;->a(IIIILandroid/widget/ImageView$ScaleType;)I

    move-result v5

    iget v6, p0, Lcom/yandex/mobile/ads/network/core/l;->d:I

    iget v7, p0, Lcom/yandex/mobile/ads/network/core/l;->c:I

    iget-object v8, p0, Lcom/yandex/mobile/ads/network/core/l;->e:Landroid/widget/ImageView$ScaleType;

    invoke-static {v6, v7, v4, v3, v8}, Lcom/yandex/mobile/ads/network/core/l;->a(IIIILandroid/widget/ImageView$ScaleType;)I

    move-result v6

    const/4 v7, 0x0

    iput-boolean v7, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {v3, v4, v5, v6}, Lcom/yandex/mobile/ads/network/core/l;->a(IIII)I

    move-result v3

    iput v3, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v3, 0x0

    array-length v4, v0

    invoke-static {v0, v3, v4, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-gt v0, v5, :cond_1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-le v0, v6, :cond_2

    :cond_1
    const/4 v0, 0x1

    invoke-static {v1, v5, v6, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 155
    :catch_0
    move-exception v0

    .line 156
    :try_start_3
    const-string v1, "Caught OOM for %d byte image, url=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p1, Lcom/yandex/mobile/ads/network/core/o;->b:[B

    array-length v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/network/core/l;->f()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Lcom/yandex/mobile/ads/network/core/v;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 157
    new-instance v1, Lcom/yandex/mobile/ads/network/core/error/e;

    invoke-direct {v1, v0}, Lcom/yandex/mobile/ads/network/core/error/e;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, Lcom/yandex/mobile/ads/network/core/s;->a(Lcom/yandex/mobile/ads/network/core/error/h;)Lcom/yandex/mobile/ads/network/core/s;

    move-result-object v0

    monitor-exit v2

    goto :goto_2

    .line 159
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_2
    move-object v0, v1

    .line 154
    goto :goto_0

    :cond_3
    :try_start_4
    invoke-static {p1}, Lcom/yandex/mobile/ads/network/core/h;->a(Lcom/yandex/mobile/ads/network/core/o;)Lcom/yandex/mobile/ads/network/core/c$a;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yandex/mobile/ads/network/core/s;->a(Ljava/lang/Object;Lcom/yandex/mobile/ads/network/core/c$a;)Lcom/yandex/mobile/ads/network/core/s;
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v0

    goto :goto_1
.end method

.method protected a(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/yandex/mobile/ads/network/core/l;->a:Lcom/yandex/mobile/ads/network/core/s$b;

    invoke-interface {v0, p1}, Lcom/yandex/mobile/ads/network/core/s$b;->a(Ljava/lang/Object;)V

    .line 215
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 30
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/network/core/l;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method
