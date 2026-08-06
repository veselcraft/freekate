.class public Lcom/yandex/mobile/ads/nativeads/ab;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/nativeads/as;


# instance fields
.field final a:Lcom/yandex/mobile/ads/nativeads/aj;

.field private b:Lcom/yandex/mobile/ads/nativeads/ac;


# direct methods
.method public constructor <init>(Lcom/yandex/mobile/ads/nativeads/aj;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/yandex/mobile/ads/nativeads/ab;->a:Lcom/yandex/mobile/ads/nativeads/aj;

    .line 33
    return-void
.end method


# virtual methods
.method public a(IZ)Lcom/yandex/mobile/ads/ax;
    .locals 3

    .prologue
    .line 42
    invoke-virtual {p0, p1, p2}, Lcom/yandex/mobile/ads/nativeads/ab;->b(IZ)Landroid/util/Pair;

    move-result-object v1

    .line 43
    iget-object v0, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/yandex/mobile/ads/ax$a;

    invoke-virtual {p0, v0, p2}, Lcom/yandex/mobile/ads/nativeads/ab;->a(Lcom/yandex/mobile/ads/ax$a;Z)Lcom/yandex/mobile/ads/ax;

    move-result-object v2

    .line 44
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/yandex/mobile/ads/ax;->a(Ljava/lang/String;)V

    .line 46
    return-object v2
.end method

.method protected a(Lcom/yandex/mobile/ads/ax$a;Z)Lcom/yandex/mobile/ads/ax;
    .locals 1

    .prologue
    .line 76
    new-instance v0, Lcom/yandex/mobile/ads/ax;

    invoke-direct {v0, p1}, Lcom/yandex/mobile/ads/ax;-><init>(Lcom/yandex/mobile/ads/ax$a;)V

    return-object v0
.end method

.method public a(Lcom/yandex/mobile/ads/nativeads/ac;)V
    .locals 1

    .prologue
    .line 36
    iput-object p1, p0, Lcom/yandex/mobile/ads/nativeads/ab;->b:Lcom/yandex/mobile/ads/nativeads/ac;

    .line 37
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/ab;->a:Lcom/yandex/mobile/ads/nativeads/aj;

    invoke-interface {v0, p1}, Lcom/yandex/mobile/ads/nativeads/aj;->a(Lcom/yandex/mobile/ads/nativeads/ac;)V

    .line 38
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/ab;->b:Lcom/yandex/mobile/ads/nativeads/ac;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/ab;->b:Lcom/yandex/mobile/ads/nativeads/ac;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/nativeads/ac;->a()Lcom/yandex/mobile/ads/nativeads/NativeAdView;

    move-result-object v0

    .line 84
    invoke-static {v0}, Lcom/yandex/mobile/ads/utils/k;->c(Landroid/view/View;)Z

    move-result v0

    .line 87
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method a(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 113
    iget-object v1, p0, Lcom/yandex/mobile/ads/nativeads/ab;->b:Lcom/yandex/mobile/ads/nativeads/ac;

    if-eqz v1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/yandex/mobile/ads/nativeads/ab;->b:Lcom/yandex/mobile/ads/nativeads/ac;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/nativeads/ac;->a()Lcom/yandex/mobile/ads/nativeads/NativeAdView;

    move-result-object v1

    .line 115
    invoke-static {v1, p1}, Lcom/yandex/mobile/ads/utils/k;->a(Landroid/view/View;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 118
    :cond_0
    :goto_0
    return v0

    .line 115
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method b(IZ)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Landroid/util/Pair",
            "<",
            "Lcom/yandex/mobile/ads/ax$a;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    const/4 v1, 0x0

    .line 54
    if-eqz p2, :cond_0

    .line 55
    sget-object v0, Lcom/yandex/mobile/ads/ax$a;->c:Lcom/yandex/mobile/ads/ax$a;

    .line 72
    :goto_0
    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    .line 57
    :cond_0
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/nativeads/ab;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    sget-object v0, Lcom/yandex/mobile/ads/ax$a;->l:Lcom/yandex/mobile/ads/ax$a;

    goto :goto_0

    .line 60
    :cond_1
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/nativeads/ab;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 61
    sget-object v0, Lcom/yandex/mobile/ads/ax$a;->m:Lcom/yandex/mobile/ads/ax$a;

    goto :goto_0

    .line 63
    :cond_2
    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/nativeads/ab;->a(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 64
    sget-object v0, Lcom/yandex/mobile/ads/ax$a;->i:Lcom/yandex/mobile/ads/ax$a;

    goto :goto_0

    .line 67
    :cond_3
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/ab;->a:Lcom/yandex/mobile/ads/nativeads/aj;

    invoke-interface {v0}, Lcom/yandex/mobile/ads/nativeads/aj;->a()Lcom/yandex/mobile/ads/nativeads/aj$a;

    move-result-object v1

    .line 68
    invoke-interface {v1}, Lcom/yandex/mobile/ads/nativeads/aj$a;->b()Lcom/yandex/mobile/ads/ax$a;

    move-result-object v0

    .line 69
    invoke-interface {v1}, Lcom/yandex/mobile/ads/nativeads/aj$a;->a()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method b()Z
    .locals 4

    .prologue
    const/16 v3, 0xa

    const/4 v0, 0x1

    .line 94
    iget-object v1, p0, Lcom/yandex/mobile/ads/nativeads/ab;->b:Lcom/yandex/mobile/ads/nativeads/ac;

    if-eqz v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/yandex/mobile/ads/nativeads/ab;->b:Lcom/yandex/mobile/ads/nativeads/ac;

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/nativeads/ac;->a()Lcom/yandex/mobile/ads/nativeads/NativeAdView;

    move-result-object v1

    .line 96
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-lt v1, v3, :cond_0

    if-ge v2, v3, :cond_1

    .line 99
    :cond_0
    :goto_0
    return v0

    .line 96
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/ab;->a:Lcom/yandex/mobile/ads/nativeads/aj;

    invoke-interface {v0}, Lcom/yandex/mobile/ads/nativeads/aj;->e()Z

    move-result v0

    return v0
.end method
