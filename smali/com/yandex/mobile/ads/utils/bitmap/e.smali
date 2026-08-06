.class Lcom/yandex/mobile/ads/utils/bitmap/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/utils/bitmap/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/utils/bitmap/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yandex/mobile/ads/utils/bitmap/a",
        "<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yandex/mobile/ads/utils/bitmap/d;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/yandex/mobile/ads/utils/bitmap/d;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/utils/bitmap/d;-><init>()V

    iput-object v0, p0, Lcom/yandex/mobile/ads/utils/bitmap/e;->a:Lcom/yandex/mobile/ads/utils/bitmap/d;

    .line 29
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;)Z
    .locals 7

    .prologue
    const/16 v6, 0x14

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 33
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 35
    :goto_0
    iget-object v3, p0, Lcom/yandex/mobile/ads/utils/bitmap/e;->a:Lcom/yandex/mobile/ads/utils/bitmap/d;

    invoke-virtual {v3, v0, v2, v2, v2}, Lcom/yandex/mobile/ads/utils/bitmap/d;->a(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 36
    iget-object v3, p0, Lcom/yandex/mobile/ads/utils/bitmap/e;->a:Lcom/yandex/mobile/ads/utils/bitmap/d;

    invoke-virtual {v3, p2, v2, v2, v2}, Lcom/yandex/mobile/ads/utils/bitmap/d;->a(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 38
    new-instance v4, Lcom/yandex/mobile/ads/utils/bitmap/e$a;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v0

    invoke-direct {v4, v0}, Lcom/yandex/mobile/ads/utils/bitmap/e$a;-><init>(I)V

    .line 39
    new-instance v0, Lcom/yandex/mobile/ads/utils/bitmap/e$a;

    invoke-virtual {v3, v1, v1}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v3

    invoke-direct {v0, v3}, Lcom/yandex/mobile/ads/utils/bitmap/e$a;-><init>(I)V

    .line 41
    invoke-static {v4}, Lcom/yandex/mobile/ads/utils/bitmap/e$a;->a(Lcom/yandex/mobile/ads/utils/bitmap/e$a;)I

    move-result v3

    invoke-static {v0}, Lcom/yandex/mobile/ads/utils/bitmap/e$a;->a(Lcom/yandex/mobile/ads/utils/bitmap/e$a;)I

    move-result v5

    sub-int/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v3, v6, :cond_3

    move v0, v1

    :goto_1
    return v0

    .line 33
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    if-lez v0, :cond_1

    if-gtz v3, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/yandex/mobile/ads/utils/bitmap/e;->a:Lcom/yandex/mobile/ads/utils/bitmap/d;

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v2, v2, v3}, Lcom/yandex/mobile/ads/utils/bitmap/d;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_2
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Canvas;->getHeight()I

    move-result v5

    invoke-virtual {p1, v1, v1, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/yandex/mobile/ads/utils/bitmap/e;->a:Lcom/yandex/mobile/ads/utils/bitmap/d;

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v4, v0, v3, v5}, Lcom/yandex/mobile/ads/utils/bitmap/d;->a(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_2

    .line 41
    :cond_3
    invoke-static {v4}, Lcom/yandex/mobile/ads/utils/bitmap/e$a;->b(Lcom/yandex/mobile/ads/utils/bitmap/e$a;)I

    move-result v3

    invoke-static {v0}, Lcom/yandex/mobile/ads/utils/bitmap/e$a;->b(Lcom/yandex/mobile/ads/utils/bitmap/e$a;)I

    move-result v5

    sub-int/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v3, v6, :cond_4

    move v0, v1

    goto :goto_1

    :cond_4
    invoke-static {v4}, Lcom/yandex/mobile/ads/utils/bitmap/e$a;->c(Lcom/yandex/mobile/ads/utils/bitmap/e$a;)I

    move-result v3

    invoke-static {v0}, Lcom/yandex/mobile/ads/utils/bitmap/e$a;->c(Lcom/yandex/mobile/ads/utils/bitmap/e$a;)I

    move-result v5

    sub-int/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v3, v6, :cond_5

    move v0, v1

    goto :goto_1

    :cond_5
    invoke-static {v4}, Lcom/yandex/mobile/ads/utils/bitmap/e$a;->d(Lcom/yandex/mobile/ads/utils/bitmap/e$a;)I

    move-result v3

    invoke-static {v0}, Lcom/yandex/mobile/ads/utils/bitmap/e$a;->d(Lcom/yandex/mobile/ads/utils/bitmap/e$a;)I

    move-result v0

    sub-int v0, v3, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-gt v0, v6, :cond_6

    move v0, v2

    goto :goto_1

    :cond_6
    move v0, v1

    goto :goto_1
.end method
