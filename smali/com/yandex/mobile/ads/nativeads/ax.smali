.class public Lcom/yandex/mobile/ads/nativeads/ax;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:J

.field private b:Ljava/lang/String;

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/yandex/mobile/ads/nativeads/ax;->a:J

    return-wide v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 26
    iput p1, p0, Lcom/yandex/mobile/ads/nativeads/ax;->c:I

    .line 27
    return-void
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 18
    iput-wide p1, p0, Lcom/yandex/mobile/ads/nativeads/ax;->a:J

    .line 19
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 22
    iput-object p1, p0, Lcom/yandex/mobile/ads/nativeads/ax;->b:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/ax;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/yandex/mobile/ads/nativeads/ax;->c:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 43
    if-ne p0, p1, :cond_1

    .line 50
    .end local p1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 44
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

    .line 46
    :cond_3
    check-cast p1, Lcom/yandex/mobile/ads/nativeads/ax;

    .line 48
    .end local p1    # "o":Ljava/lang/Object;
    iget-wide v2, p0, Lcom/yandex/mobile/ads/nativeads/ax;->a:J

    iget-wide v4, p1, Lcom/yandex/mobile/ads/nativeads/ax;->a:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_0

    .line 49
    :cond_4
    iget v2, p0, Lcom/yandex/mobile/ads/nativeads/ax;->c:I

    iget v3, p1, Lcom/yandex/mobile/ads/nativeads/ax;->c:I

    if-eq v2, v3, :cond_5

    move v0, v1

    goto :goto_0

    .line 50
    :cond_5
    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/ax;->b:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/ax;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/yandex/mobile/ads/nativeads/ax;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_6
    iget-object v2, p1, Lcom/yandex/mobile/ads/nativeads/ax;->b:Ljava/lang/String;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/yandex/mobile/ads/nativeads/ax;->a:J

    iget-wide v2, p0, Lcom/yandex/mobile/ads/nativeads/ax;->a:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    xor-long/2addr v0, v2

    long-to-int v0, v0

    .line 57
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/ax;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/ax;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v1

    .line 58
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/yandex/mobile/ads/nativeads/ax;->c:I

    add-int/2addr v0, v1

    .line 59
    return v0

    .line 57
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
