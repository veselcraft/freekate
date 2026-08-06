.class public final Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Lcom/yandex/mobile/ads/nativeads/NativeAdImage;

.field private f:Lcom/yandex/mobile/ads/nativeads/NativeAdImage;

.field private g:Lcom/yandex/mobile/ads/nativeads/NativeAdImage;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/Float;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static d(Lcom/yandex/mobile/ads/nativeads/g;Lcom/yandex/mobile/ads/nativeads/f;)Lcom/yandex/mobile/ads/nativeads/NativeAdImage;
    .locals 2

    .prologue
    .line 229
    if-eqz p0, :cond_0

    .line 230
    new-instance v0, Lcom/yandex/mobile/ads/nativeads/NativeAdImage;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/nativeads/NativeAdImage;-><init>()V

    .line 231
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/nativeads/g;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/nativeads/NativeAdImage;->a(I)V

    .line 232
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/nativeads/g;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/nativeads/NativeAdImage;->b(I)V

    .line 233
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/nativeads/g;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/nativeads/NativeAdImage;->a(Ljava/lang/String;)V

    .line 234
    invoke-interface {p1, p0}, Lcom/yandex/mobile/ads/nativeads/f;->a(Lcom/yandex/mobile/ads/nativeads/g;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/nativeads/NativeAdImage;->a(Landroid/graphics/Bitmap;)V

    .line 239
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method a(Lcom/yandex/mobile/ads/nativeads/g;Lcom/yandex/mobile/ads/nativeads/f;)V
    .locals 1

    .prologue
    .line 55
    invoke-static {p1, p2}, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->d(Lcom/yandex/mobile/ads/nativeads/g;Lcom/yandex/mobile/ads/nativeads/f;)Lcom/yandex/mobile/ads/nativeads/NativeAdImage;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->e:Lcom/yandex/mobile/ads/nativeads/NativeAdImage;

    .line 56
    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->a:Ljava/lang/String;

    .line 40
    return-void
.end method

.method b(Lcom/yandex/mobile/ads/nativeads/g;Lcom/yandex/mobile/ads/nativeads/f;)V
    .locals 1

    .prologue
    .line 59
    invoke-static {p1, p2}, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->d(Lcom/yandex/mobile/ads/nativeads/g;Lcom/yandex/mobile/ads/nativeads/f;)Lcom/yandex/mobile/ads/nativeads/NativeAdImage;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->f:Lcom/yandex/mobile/ads/nativeads/NativeAdImage;

    .line 60
    return-void
.end method

.method b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->b:Ljava/lang/String;

    .line 44
    return-void
.end method

.method c(Lcom/yandex/mobile/ads/nativeads/g;Lcom/yandex/mobile/ads/nativeads/f;)V
    .locals 1

    .prologue
    .line 63
    invoke-static {p1, p2}, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->d(Lcom/yandex/mobile/ads/nativeads/g;Lcom/yandex/mobile/ads/nativeads/f;)Lcom/yandex/mobile/ads/nativeads/NativeAdImage;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->g:Lcom/yandex/mobile/ads/nativeads/NativeAdImage;

    .line 64
    return-void
.end method

.method c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->c:Ljava/lang/String;

    .line 48
    return-void
.end method

.method d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->d:Ljava/lang/String;

    .line 52
    return-void
.end method

.method e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->h:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 244
    if-ne p0, p1, :cond_1

    .line 265
    .end local p1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 245
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

    .line 247
    :cond_3
    check-cast p1, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;

    .line 249
    .end local p1    # "o":Ljava/lang/Object;
    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->a:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p1, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->a:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 250
    :cond_6
    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->b:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    :cond_7
    move v0, v1

    goto :goto_0

    :cond_8
    iget-object v2, p1, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->b:Ljava/lang/String;

    if-nez v2, :cond_7

    .line 251
    :cond_9
    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->c:Ljava/lang/String;

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    :cond_a
    move v0, v1

    .line 252
    goto :goto_0

    .line 251
    :cond_b
    iget-object v2, p1, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->c:Ljava/lang/String;

    if-nez v2, :cond_a

    .line 253
    :cond_c
    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->d:Ljava/lang/String;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    :cond_d
    move v0, v1

    goto :goto_0

    :cond_e
    iget-object v2, p1, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->d:Ljava/lang/String;

    if-nez v2, :cond_d

    .line 254
    :cond_f
    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->e:Lcom/yandex/mobile/ads/nativeads/NativeAdImage;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->e:Lcom/yandex/mobile/ads/nativeads/NativeAdImage;

    iget-object v3, p1, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->e:Lcom/yandex/mobile/ads/nativeads/NativeAdImage;

    invoke-virtual {v2, v3}, Lcom/yandex/mobile/ads/nativeads/NativeAdImage;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    :cond_10
    move v0, v1

    .line 255
    goto :goto_0

    .line 254
    :cond_11
    iget-object v2, p1, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->e:Lcom/yandex/mobile/ads/nativeads/NativeAdImage;

    if-nez v2, :cond_10

    .line 256
    :cond_12
    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->f:Lcom/yandex/mobile/ads/nativeads/NativeAdImage;

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->f:Lcom/yandex/mobile/ads/nativeads/NativeAdImage;

    iget-object v3, p1, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->f:Lcom/yandex/mobile/ads/nativeads/NativeAdImage;

    invoke-virtual {v2, v3}, Lcom/yandex/mobile/ads/nativeads/NativeAdImage;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_15

    :cond_13
    move v0, v1

    goto/16 :goto_0

    :cond_14
    iget-object v2, p1, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->f:Lcom/yandex/mobile/ads/nativeads/NativeAdImage;

    if-nez v2, :cond_13

    .line 257
    :cond_15
    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->g:Lcom/yandex/mobile/ads/nativeads/NativeAdImage;

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->g:Lcom/yandex/mobile/ads/nativeads/NativeAdImage;

    iget-object v3, p1, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->g:Lcom/yandex/mobile/ads/nativeads/NativeAdImage;

    invoke-virtual {v2, v3}, Lcom/yandex/mobile/ads/nativeads/NativeAdImage;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    :cond_16
    move v0, v1

    goto/16 :goto_0

    :cond_17
    iget-object v2, p1, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->g:Lcom/yandex/mobile/ads/nativeads/NativeAdImage;

    if-nez v2, :cond_16

    .line 258
    :cond_18
    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->h:Ljava/lang/String;

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->h:Ljava/lang/String;

    iget-object v3, p1, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    :cond_19
    move v0, v1

    goto/16 :goto_0

    :cond_1a
    iget-object v2, p1, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->h:Ljava/lang/String;

    if-nez v2, :cond_19

    .line 259
    :cond_1b
    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->i:Ljava/lang/Float;

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->i:Ljava/lang/Float;

    iget-object v3, p1, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->i:Ljava/lang/Float;

    invoke-virtual {v2, v3}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    :cond_1c
    move v0, v1

    goto/16 :goto_0

    :cond_1d
    iget-object v2, p1, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->i:Ljava/lang/Float;

    if-nez v2, :cond_1c

    .line 260
    :cond_1e
    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->j:Ljava/lang/String;

    if-eqz v2, :cond_20

    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->j:Ljava/lang/String;

    iget-object v3, p1, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->j:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_21

    :cond_1f
    move v0, v1

    .line 261
    goto/16 :goto_0

    .line 260
    :cond_20
    iget-object v2, p1, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->j:Ljava/lang/String;

    if-nez v2, :cond_1f

    .line 262
    :cond_21
    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->k:Ljava/lang/String;

    if-eqz v2, :cond_23

    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->k:Ljava/lang/String;

    iget-object v3, p1, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->k:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    :cond_22
    move v0, v1

    .line 263
    goto/16 :goto_0

    .line 262
    :cond_23
    iget-object v2, p1, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->k:Ljava/lang/String;

    if-nez v2, :cond_22

    .line 264
    :cond_24
    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->l:Ljava/lang/String;

    if-eqz v2, :cond_26

    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->l:Ljava/lang/String;

    iget-object v3, p1, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->l:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_27

    :cond_25
    move v0, v1

    goto/16 :goto_0

    :cond_26
    iget-object v2, p1, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->l:Ljava/lang/String;

    if-nez v2, :cond_25

    .line 265
    :cond_27
    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->m:Ljava/lang/String;

    if-eqz v2, :cond_28

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->m:Ljava/lang/String;

    iget-object v1, p1, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto/16 :goto_0

    :cond_28
    iget-object v2, p1, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->m:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    goto/16 :goto_0
.end method

.method f(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 71
    if-eqz p1, :cond_0

    .line 73
    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->i:Ljava/lang/Float;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :cond_0
    :goto_0
    return-void

    .line 75
    :catch_0
    move-exception v0

    const-string v0, "Could not parse rating value. Rating value is %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_0
.end method

.method g(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->j:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public getAge()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getCallToAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getFavicon()Lcom/yandex/mobile/ads/nativeads/NativeAdImage;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->e:Lcom/yandex/mobile/ads/nativeads/NativeAdImage;

    return-object v0
.end method

.method public getIcon()Lcom/yandex/mobile/ads/nativeads/NativeAdImage;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->f:Lcom/yandex/mobile/ads/nativeads/NativeAdImage;

    return-object v0
.end method

.method public getImage()Lcom/yandex/mobile/ads/nativeads/NativeAdImage;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->g:Lcom/yandex/mobile/ads/nativeads/NativeAdImage;

    return-object v0
.end method

.method public getPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getRating()Ljava/lang/Float;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->i:Ljava/lang/Float;

    return-object v0
.end method

.method public getReviewCount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getSponsored()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getWarning()Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->m:Ljava/lang/String;

    return-object v0
.end method

.method h(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->k:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 271
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 272
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->b:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 273
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->c:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 274
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->d:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->d:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    .line 275
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->e:Lcom/yandex/mobile/ads/nativeads/NativeAdImage;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->e:Lcom/yandex/mobile/ads/nativeads/NativeAdImage;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/nativeads/NativeAdImage;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    .line 276
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->f:Lcom/yandex/mobile/ads/nativeads/NativeAdImage;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->f:Lcom/yandex/mobile/ads/nativeads/NativeAdImage;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/nativeads/NativeAdImage;->hashCode()I

    move-result v0

    :goto_5
    add-int/2addr v0, v2

    .line 277
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->g:Lcom/yandex/mobile/ads/nativeads/NativeAdImage;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->g:Lcom/yandex/mobile/ads/nativeads/NativeAdImage;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/nativeads/NativeAdImage;->hashCode()I

    move-result v0

    :goto_6
    add-int/2addr v0, v2

    .line 278
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->h:Ljava/lang/String;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_7
    add-int/2addr v0, v2

    .line 279
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->i:Ljava/lang/Float;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->i:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->hashCode()I

    move-result v0

    :goto_8
    add-int/2addr v0, v2

    .line 280
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->j:Ljava/lang/String;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->j:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_9
    add-int/2addr v0, v2

    .line 281
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->k:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->k:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_a
    add-int/2addr v0, v2

    .line 282
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->l:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->l:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_b
    add-int/2addr v0, v2

    .line 283
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->m:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->m:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 284
    return v0

    :cond_1
    move v0, v1

    .line 271
    goto/16 :goto_0

    :cond_2
    move v0, v1

    .line 272
    goto/16 :goto_1

    :cond_3
    move v0, v1

    .line 273
    goto/16 :goto_2

    :cond_4
    move v0, v1

    .line 274
    goto/16 :goto_3

    :cond_5
    move v0, v1

    .line 275
    goto :goto_4

    :cond_6
    move v0, v1

    .line 276
    goto :goto_5

    :cond_7
    move v0, v1

    .line 277
    goto :goto_6

    :cond_8
    move v0, v1

    .line 278
    goto :goto_7

    :cond_9
    move v0, v1

    .line 279
    goto :goto_8

    :cond_a
    move v0, v1

    .line 280
    goto :goto_9

    :cond_b
    move v0, v1

    .line 281
    goto :goto_a

    :cond_c
    move v0, v1

    .line 282
    goto :goto_b
.end method

.method i(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->l:Ljava/lang/String;

    .line 90
    return-void
.end method

.method j(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->m:Ljava/lang/String;

    .line 94
    return-void
.end method
