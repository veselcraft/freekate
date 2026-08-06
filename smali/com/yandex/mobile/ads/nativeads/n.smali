.class public Lcom/yandex/mobile/ads/nativeads/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/yandex/mobile/ads/n;

.field private final b:Lcom/yandex/mobile/ads/e;

.field private final c:Lcom/yandex/mobile/ads/nativeads/t;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/nativeads/t;Lcom/yandex/mobile/ads/n;Lcom/yandex/mobile/ads/e;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p2, p0, Lcom/yandex/mobile/ads/nativeads/n;->a:Lcom/yandex/mobile/ads/n;

    .line 27
    iput-object p3, p0, Lcom/yandex/mobile/ads/nativeads/n;->b:Lcom/yandex/mobile/ads/e;

    .line 28
    iput-object p1, p0, Lcom/yandex/mobile/ads/nativeads/n;->c:Lcom/yandex/mobile/ads/nativeads/t;

    .line 29
    return-void
.end method


# virtual methods
.method public a()Lcom/yandex/mobile/ads/e;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/n;->b:Lcom/yandex/mobile/ads/e;

    return-object v0
.end method

.method public b()Lcom/yandex/mobile/ads/n;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/n;->a:Lcom/yandex/mobile/ads/n;

    return-object v0
.end method

.method public c()Lcom/yandex/mobile/ads/nativeads/t;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/n;->c:Lcom/yandex/mobile/ads/nativeads/t;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 48
    if-ne p0, p1, :cond_1

    .line 57
    .end local p1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 49
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

    .line 51
    :cond_3
    check-cast p1, Lcom/yandex/mobile/ads/nativeads/n;

    .line 53
    .end local p1    # "o":Ljava/lang/Object;
    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/n;->a:Lcom/yandex/mobile/ads/n;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/n;->a:Lcom/yandex/mobile/ads/n;

    iget-object v3, p1, Lcom/yandex/mobile/ads/nativeads/n;->a:Lcom/yandex/mobile/ads/n;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_4
    move v0, v1

    .line 54
    goto :goto_0

    .line 53
    :cond_5
    iget-object v2, p1, Lcom/yandex/mobile/ads/nativeads/n;->a:Lcom/yandex/mobile/ads/n;

    if-nez v2, :cond_4

    .line 55
    :cond_6
    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/n;->b:Lcom/yandex/mobile/ads/e;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/n;->b:Lcom/yandex/mobile/ads/e;

    iget-object v3, p1, Lcom/yandex/mobile/ads/nativeads/n;->b:Lcom/yandex/mobile/ads/e;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    :cond_7
    move v0, v1

    .line 56
    goto :goto_0

    .line 55
    :cond_8
    iget-object v2, p1, Lcom/yandex/mobile/ads/nativeads/n;->b:Lcom/yandex/mobile/ads/e;

    if-nez v2, :cond_7

    .line 57
    :cond_9
    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/n;->c:Lcom/yandex/mobile/ads/nativeads/t;

    if-eqz v2, :cond_a

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/n;->c:Lcom/yandex/mobile/ads/nativeads/t;

    iget-object v1, p1, Lcom/yandex/mobile/ads/nativeads/n;->c:Lcom/yandex/mobile/ads/nativeads/t;

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/nativeads/t;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_a
    iget-object v2, p1, Lcom/yandex/mobile/ads/nativeads/n;->c:Lcom/yandex/mobile/ads/nativeads/t;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 63
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/n;->a:Lcom/yandex/mobile/ads/n;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/n;->a:Lcom/yandex/mobile/ads/n;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 64
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/n;->b:Lcom/yandex/mobile/ads/e;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/n;->b:Lcom/yandex/mobile/ads/e;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 65
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/n;->c:Lcom/yandex/mobile/ads/nativeads/t;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/yandex/mobile/ads/nativeads/n;->c:Lcom/yandex/mobile/ads/nativeads/t;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/nativeads/t;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 66
    return v0

    :cond_1
    move v0, v1

    .line 63
    goto :goto_0

    :cond_2
    move v0, v1

    .line 64
    goto :goto_1
.end method
