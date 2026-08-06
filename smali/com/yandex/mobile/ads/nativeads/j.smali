.class public Lcom/yandex/mobile/ads/nativeads/j;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/yandex/mobile/ads/nativeads/i;

.field private b:Lcom/yandex/mobile/ads/nativeads/NativeAdType;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/yandex/mobile/ads/nativeads/c;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/yandex/mobile/ads/nativeads/ax;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/yandex/mobile/ads/nativeads/i;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/j;->a:Lcom/yandex/mobile/ads/nativeads/i;

    return-object v0
.end method

.method public a(Lcom/yandex/mobile/ads/nativeads/ax;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/yandex/mobile/ads/nativeads/j;->d:Lcom/yandex/mobile/ads/nativeads/ax;

    .line 76
    return-void
.end method

.method public a(Lcom/yandex/mobile/ads/nativeads/i;)V
    .locals 1

    .prologue
    .line 42
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/yandex/mobile/ads/nativeads/i;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    iput-object p1, p0, Lcom/yandex/mobile/ads/nativeads/j;->a:Lcom/yandex/mobile/ads/nativeads/i;

    .line 45
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 48
    invoke-static {p1}, Lcom/yandex/mobile/ads/nativeads/NativeAdType;->a(Ljava/lang/String;)Lcom/yandex/mobile/ads/nativeads/NativeAdType;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/nativeads/j;->b:Lcom/yandex/mobile/ads/nativeads/NativeAdType;

    .line 49
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/yandex/mobile/ads/nativeads/c;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    iput-object p1, p0, Lcom/yandex/mobile/ads/nativeads/j;->c:Ljava/util/List;

    .line 39
    return-void
.end method

.method public b()Lcom/yandex/mobile/ads/nativeads/NativeAdType;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/j;->b:Lcom/yandex/mobile/ads/nativeads/NativeAdType;

    return-object v0
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/yandex/mobile/ads/nativeads/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/j;->c:Ljava/util/List;

    return-object v0
.end method

.method public d()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/yandex/mobile/ads/nativeads/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 63
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/j;->c:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/j;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/nativeads/c;

    .line 65
    const-string v3, "image"

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/nativeads/c;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 66
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 71
    :cond_1
    return-object v1
.end method

.method public e()Lcom/yandex/mobile/ads/nativeads/ax;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/j;->d:Lcom/yandex/mobile/ads/nativeads/ax;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 84
    if-ne p0, p1, :cond_1

    .line 93
    .end local p1    # "o":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v0

    .line 85
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

    .line 87
    :cond_3
    check-cast p1, Lcom/yandex/mobile/ads/nativeads/j;

    .line 89
    .end local p1    # "o":Ljava/lang/Object;
    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/j;->a:Lcom/yandex/mobile/ads/nativeads/i;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/j;->a:Lcom/yandex/mobile/ads/nativeads/i;

    iget-object v3, p1, Lcom/yandex/mobile/ads/nativeads/j;->a:Lcom/yandex/mobile/ads/nativeads/i;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    :cond_4
    move v0, v1

    goto :goto_0

    :cond_5
    iget-object v2, p1, Lcom/yandex/mobile/ads/nativeads/j;->a:Lcom/yandex/mobile/ads/nativeads/i;

    if-nez v2, :cond_4

    .line 90
    :cond_6
    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/j;->b:Lcom/yandex/mobile/ads/nativeads/NativeAdType;

    iget-object v3, p1, Lcom/yandex/mobile/ads/nativeads/j;->b:Lcom/yandex/mobile/ads/nativeads/NativeAdType;

    if-eq v2, v3, :cond_7

    move v0, v1

    goto :goto_0

    .line 91
    :cond_7
    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/j;->c:Ljava/util/List;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/j;->c:Ljava/util/List;

    iget-object v3, p1, Lcom/yandex/mobile/ads/nativeads/j;->c:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    :cond_8
    move v0, v1

    .line 92
    goto :goto_0

    .line 91
    :cond_9
    iget-object v2, p1, Lcom/yandex/mobile/ads/nativeads/j;->c:Ljava/util/List;

    if-nez v2, :cond_8

    .line 93
    :cond_a
    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/j;->d:Lcom/yandex/mobile/ads/nativeads/ax;

    if-eqz v2, :cond_b

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/j;->d:Lcom/yandex/mobile/ads/nativeads/ax;

    iget-object v1, p1, Lcom/yandex/mobile/ads/nativeads/j;->d:Lcom/yandex/mobile/ads/nativeads/ax;

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/nativeads/ax;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_b
    iget-object v2, p1, Lcom/yandex/mobile/ads/nativeads/j;->d:Lcom/yandex/mobile/ads/nativeads/ax;

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 99
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/j;->a:Lcom/yandex/mobile/ads/nativeads/i;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/j;->a:Lcom/yandex/mobile/ads/nativeads/i;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 100
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/j;->b:Lcom/yandex/mobile/ads/nativeads/NativeAdType;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/j;->b:Lcom/yandex/mobile/ads/nativeads/NativeAdType;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/nativeads/NativeAdType;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 101
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/j;->c:Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/j;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 102
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/yandex/mobile/ads/nativeads/j;->d:Lcom/yandex/mobile/ads/nativeads/ax;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/yandex/mobile/ads/nativeads/j;->d:Lcom/yandex/mobile/ads/nativeads/ax;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/nativeads/ax;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 103
    return v0

    :cond_1
    move v0, v1

    .line 99
    goto :goto_0

    :cond_2
    move v0, v1

    .line 100
    goto :goto_1

    :cond_3
    move v0, v1

    .line 101
    goto :goto_2
.end method
