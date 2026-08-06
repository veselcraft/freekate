.class public final Lcom/yandex/mobile/ads/nativeads/NativeAdImage;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdImage;->b:Ljava/lang/String;

    return-object v0
.end method

.method a(I)V
    .locals 0

    .prologue
    .line 32
    iput p1, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdImage;->c:I

    .line 33
    return-void
.end method

.method a(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 28
    iput-object p1, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdImage;->a:Landroid/graphics/Bitmap;

    .line 29
    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdImage;->b:Ljava/lang/String;

    .line 41
    return-void
.end method

.method b(I)V
    .locals 0

    .prologue
    .line 36
    iput p1, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdImage;->d:I

    .line 37
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 77
    if-ne p0, p1, :cond_1

    .line 88
    .end local p1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 78
    .restart local p1    # "o":Ljava/lang/Object;
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    .line 80
    :cond_3
    check-cast p1, Lcom/yandex/mobile/ads/nativeads/NativeAdImage;

    .line 82
    .end local p1    # "o":Ljava/lang/Object;
    iget v2, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdImage;->c:I

    iget v3, p1, Lcom/yandex/mobile/ads/nativeads/NativeAdImage;->c:I

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    .line 83
    :cond_4
    iget v2, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdImage;->d:I

    iget v3, p1, Lcom/yandex/mobile/ads/nativeads/NativeAdImage;->d:I

    if-eq v2, v3, :cond_5

    move v0, v1

    goto :goto_0

    .line 84
    :cond_5
    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdImage;->a:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdImage;->a:Landroid/graphics/Bitmap;

    iget-object v3, p1, Lcom/yandex/mobile/ads/nativeads/NativeAdImage;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    :cond_6
    move v0, v1

    goto :goto_0

    :cond_7
    iget-object v2, p1, Lcom/yandex/mobile/ads/nativeads/NativeAdImage;->a:Landroid/graphics/Bitmap;

    if-nez v2, :cond_6

    .line 85
    :cond_8
    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdImage;->b:Ljava/lang/String;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdImage;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/yandex/mobile/ads/nativeads/NativeAdImage;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    move v0, v1

    .line 86
    goto :goto_0

    .line 85
    :cond_9
    iget-object v2, p1, Lcom/yandex/mobile/ads/nativeads/NativeAdImage;->b:Ljava/lang/String;

    if-eqz v2, :cond_0

    goto :goto_1
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdImage;->a:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdImage;->c:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdImage;->d:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 93
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdImage;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdImage;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 94
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdImage;->b:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdImage;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 95
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdImage;->c:I

    add-int/2addr v0, v1

    .line 96
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdImage;->d:I

    add-int/2addr v0, v1

    .line 97
    return v0

    :cond_1
    move v0, v1

    .line 93
    goto :goto_0
.end method
