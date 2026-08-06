.class public Lcom/yandex/mobile/ads/nativeads/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/g;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 36
    iput p1, p0, Lcom/yandex/mobile/ads/nativeads/g;->b:I

    .line 37
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lcom/yandex/mobile/ads/nativeads/g;->a:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/yandex/mobile/ads/nativeads/g;->b:I

    return v0
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 40
    iput p1, p0, Lcom/yandex/mobile/ads/nativeads/g;->c:I

    .line 41
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    iput-object p1, p0, Lcom/yandex/mobile/ads/nativeads/g;->d:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/yandex/mobile/ads/nativeads/g;->c:I

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/g;->d:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 53
    if-ne p0, p1, :cond_1

    .line 64
    .end local p1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 54
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

    .line 56
    :cond_3
    check-cast p1, Lcom/yandex/mobile/ads/nativeads/g;

    .line 58
    .end local p1    # "o":Ljava/lang/Object;
    iget v2, p0, Lcom/yandex/mobile/ads/nativeads/g;->b:I

    iget v3, p1, Lcom/yandex/mobile/ads/nativeads/g;->b:I

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    .line 59
    :cond_4
    iget v2, p0, Lcom/yandex/mobile/ads/nativeads/g;->c:I

    iget v3, p1, Lcom/yandex/mobile/ads/nativeads/g;->c:I

    if-eq v2, v3, :cond_5

    move v0, v1

    goto :goto_0

    .line 60
    :cond_5
    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/g;->a:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/g;->a:Ljava/lang/String;

    iget-object v3, p1, Lcom/yandex/mobile/ads/nativeads/g;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    :cond_6
    move v0, v1

    goto :goto_0

    :cond_7
    iget-object v2, p1, Lcom/yandex/mobile/ads/nativeads/g;->a:Ljava/lang/String;

    if-nez v2, :cond_6

    .line 61
    :cond_8
    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/g;->d:Ljava/lang/String;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/g;->d:Ljava/lang/String;

    iget-object v3, p1, Lcom/yandex/mobile/ads/nativeads/g;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    move v0, v1

    .line 62
    goto :goto_0

    .line 61
    :cond_9
    iget-object v2, p1, Lcom/yandex/mobile/ads/nativeads/g;->d:Ljava/lang/String;

    if-eqz v2, :cond_0

    goto :goto_1
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 69
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/g;->a:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/g;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 70
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/yandex/mobile/ads/nativeads/g;->b:I

    add-int/2addr v0, v2

    .line 71
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/yandex/mobile/ads/nativeads/g;->c:I

    add-int/2addr v0, v2

    .line 72
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/g;->d:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/yandex/mobile/ads/nativeads/g;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 73
    return v0

    :cond_1
    move v0, v1

    .line 69
    goto :goto_0
.end method
