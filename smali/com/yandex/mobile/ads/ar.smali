.class public Lcom/yandex/mobile/ads/ar;
.super Lcom/yandex/mobile/ads/w;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/ar$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yandex/mobile/ads/w",
        "<",
        "Lcom/yandex/mobile/ads/nativeads/t;",
        ">;"
    }
.end annotation


# instance fields
.field private final h:Lcom/yandex/mobile/ads/nativeads/NativeAdLoaderConfiguration;

.field private final i:Lcom/yandex/mobile/ads/ao;

.field private final j:Lcom/yandex/mobile/ads/ar$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/nativeads/NativeAdLoaderConfiguration;Lcom/yandex/mobile/ads/ar$a;)V
    .locals 2

    .prologue
    .line 55
    sget-object v0, Lcom/yandex/mobile/ads/r;->c:Lcom/yandex/mobile/ads/r;

    invoke-direct {p0, p1, v0}, Lcom/yandex/mobile/ads/w;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/r;)V

    .line 56
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/nativeads/NativeAdLoaderConfiguration;->getBlockId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/ar;->b(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p2}, Lcom/yandex/mobile/ads/nativeads/NativeAdLoaderConfiguration;->getImageSizes()[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/mobile/ads/ar;->g:Lcom/yandex/mobile/ads/e;

    invoke-virtual {v1, v0}, Lcom/yandex/mobile/ads/e;->a([Ljava/lang/String;)V

    .line 59
    iput-object p2, p0, Lcom/yandex/mobile/ads/ar;->h:Lcom/yandex/mobile/ads/nativeads/NativeAdLoaderConfiguration;

    .line 60
    iput-object p3, p0, Lcom/yandex/mobile/ads/ar;->j:Lcom/yandex/mobile/ads/ar$a;

    .line 61
    new-instance v0, Lcom/yandex/mobile/ads/ao;

    invoke-direct {v0, p1}, Lcom/yandex/mobile/ads/ao;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yandex/mobile/ads/ar;->i:Lcom/yandex/mobile/ads/ao;

    .line 62
    return-void
.end method

.method static synthetic a(Lcom/yandex/mobile/ads/ar;Lcom/yandex/mobile/ads/nativeads/n;Lcom/yandex/mobile/ads/nativeads/f;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/yandex/mobile/ads/ar;->b(Lcom/yandex/mobile/ads/nativeads/n;Lcom/yandex/mobile/ads/nativeads/f;)V

    return-void
.end method

.method private b(Lcom/yandex/mobile/ads/AdRequestError;)V
    .locals 1

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/ar;->I()V

    .line 162
    iget-object v0, p0, Lcom/yandex/mobile/ads/ar;->j:Lcom/yandex/mobile/ads/ar$a;

    invoke-interface {v0, p1}, Lcom/yandex/mobile/ads/ar$a;->a(Lcom/yandex/mobile/ads/AdRequestError;)V

    .line 163
    return-void
.end method

.method private b(Lcom/yandex/mobile/ads/nativeads/n;Lcom/yandex/mobile/ads/nativeads/f;)V
    .locals 1

    .prologue
    .line 189
    sget-object v0, Lcom/yandex/mobile/ads/k;->c:Lcom/yandex/mobile/ads/k;

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/ar;->a(Lcom/yandex/mobile/ads/k;)V

    .line 190
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/ar;->G()V

    .line 192
    iget-object v0, p0, Lcom/yandex/mobile/ads/ar;->j:Lcom/yandex/mobile/ads/ar$a;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/yandex/mobile/ads/ar;->j:Lcom/yandex/mobile/ads/ar$a;

    invoke-interface {v0, p1, p2}, Lcom/yandex/mobile/ads/ar$a;->a(Lcom/yandex/mobile/ads/nativeads/n;Lcom/yandex/mobile/ads/nativeads/f;)V

    .line 195
    :cond_0
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;Ljava/lang/String;)Lcom/yandex/mobile/ads/network/request/b;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/yandex/mobile/ads/network/request/b",
            "<",
            "Lcom/yandex/mobile/ads/nativeads/t;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    new-instance v0, Lcom/yandex/mobile/ads/network/request/d;

    iget-object v1, p0, Lcom/yandex/mobile/ads/ar;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/yandex/mobile/ads/ar;->g:Lcom/yandex/mobile/ads/e;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/yandex/mobile/ads/network/request/d;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/e;Ljava/lang/String;Ljava/lang/String;Lcom/yandex/mobile/ads/network/request/c$a;)V

    return-object v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/yandex/mobile/ads/ar;->c:Lcom/yandex/mobile/ads/h;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/h;->a()V

    .line 204
    sget-object v0, Lcom/yandex/mobile/ads/k;->a:Lcom/yandex/mobile/ads/k;

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/ar;->a(Lcom/yandex/mobile/ads/k;)V

    .line 205
    return-void
.end method

.method public declared-synchronized a(Lcom/yandex/mobile/ads/AdRequest;)V
    .locals 1

    .prologue
    .line 172
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/ar;->b(Lcom/yandex/mobile/ads/AdRequest;)V

    .line 173
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/ar;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    sget-object v0, Lcom/yandex/mobile/ads/k;->b:Lcom/yandex/mobile/ads/k;

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/ar;->a(Lcom/yandex/mobile/ads/k;)V

    .line 175
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/ar;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    :cond_0
    monitor-exit p0

    return-void

    .line 172
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public a(Lcom/yandex/mobile/ads/AdRequest;Lcom/yandex/mobile/ads/nativeads/ar;)V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/yandex/mobile/ads/ar;->g:Lcom/yandex/mobile/ads/e;

    invoke-virtual {v0, p2}, Lcom/yandex/mobile/ads/e;->a(Lcom/yandex/mobile/ads/nativeads/ar;)V

    .line 167
    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/ar;->a(Lcom/yandex/mobile/ads/AdRequest;)V

    .line 168
    return-void
.end method

.method a(Lcom/yandex/mobile/ads/AdRequestError;)V
    .locals 2

    .prologue
    .line 149
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/AdRequestError;->getDescription()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/yandex/mobile/ads/utils/logger/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    sget-object v0, Lcom/yandex/mobile/ads/k;->d:Lcom/yandex/mobile/ads/k;

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/ar;->a(Lcom/yandex/mobile/ads/k;)V

    .line 152
    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/ar;->b(Lcom/yandex/mobile/ads/AdRequestError;)V

    .line 153
    return-void
.end method

.method public a(Lcom/yandex/mobile/ads/n;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yandex/mobile/ads/n",
            "<",
            "Lcom/yandex/mobile/ads/nativeads/t;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    :try_start_0
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/ar;->D()Lcom/yandex/mobile/ads/e;

    move-result-object v1

    .line 73
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/n;->m()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/nativeads/t;

    .line 74
    new-instance v2, Lcom/yandex/mobile/ads/nativeads/n;

    invoke-direct {v2, v0, p1, v1}, Lcom/yandex/mobile/ads/nativeads/n;-><init>(Lcom/yandex/mobile/ads/nativeads/t;Lcom/yandex/mobile/ads/n;Lcom/yandex/mobile/ads/e;)V

    .line 76
    iget-object v0, p0, Lcom/yandex/mobile/ads/ar;->h:Lcom/yandex/mobile/ads/nativeads/NativeAdLoaderConfiguration;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/nativeads/NativeAdLoaderConfiguration;->shouldLoadImagesAutomatically()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    new-instance v0, Lcom/yandex/mobile/ads/nativeads/aw;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/nativeads/aw;-><init>()V

    .line 78
    invoke-virtual {p0, v2, v0}, Lcom/yandex/mobile/ads/ar;->a(Lcom/yandex/mobile/ads/nativeads/n;Lcom/yandex/mobile/ads/nativeads/f;)V

    .line 89
    :goto_0
    return-void

    .line 80
    :cond_0
    new-instance v0, Lcom/yandex/mobile/ads/nativeads/e;

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/ar;->o()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yandex/mobile/ads/nativeads/e;-><init>(Landroid/content/Context;)V

    .line 81
    invoke-direct {p0, v2, v0}, Lcom/yandex/mobile/ads/ar;->b(Lcom/yandex/mobile/ads/nativeads/n;Lcom/yandex/mobile/ads/nativeads/f;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 84
    :catch_0
    move-exception v0

    sget-object v0, Lcom/yandex/mobile/ads/AdRequestError;->d:Lcom/yandex/mobile/ads/AdRequestError;

    sget-object v1, Lcom/yandex/mobile/ads/k;->d:Lcom/yandex/mobile/ads/k;

    invoke-virtual {p0, v1}, Lcom/yandex/mobile/ads/ar;->a(Lcom/yandex/mobile/ads/k;)V

    iget-object v1, p0, Lcom/yandex/mobile/ads/ar;->j:Lcom/yandex/mobile/ads/ar$a;

    invoke-interface {v1, v0}, Lcom/yandex/mobile/ads/ar$a;->a(Lcom/yandex/mobile/ads/AdRequestError;)V

    .line 87
    sget-object v0, Lcom/yandex/mobile/ads/AdRequestError;->d:Lcom/yandex/mobile/ads/AdRequestError;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/AdRequestError;->getDescription()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/yandex/mobile/ads/utils/logger/b;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method a(Lcom/yandex/mobile/ads/nativeads/n;Lcom/yandex/mobile/ads/nativeads/f;)V
    .locals 4

    .prologue
    .line 98
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/nativeads/n;->c()Lcom/yandex/mobile/ads/nativeads/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/nativeads/t;->b()Ljava/util/List;

    move-result-object v1

    .line 99
    iget-object v2, p0, Lcom/yandex/mobile/ads/ar;->i:Lcom/yandex/mobile/ads/ao;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/yandex/mobile/ads/nativeads/j;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yandex/mobile/ads/nativeads/j;

    invoke-virtual {v2, v0}, Lcom/yandex/mobile/ads/ao;->a([Lcom/yandex/mobile/ads/nativeads/j;)Ljava/util/Set;

    move-result-object v0

    .line 101
    iget-object v2, p0, Lcom/yandex/mobile/ads/ar;->i:Lcom/yandex/mobile/ads/ao;

    new-instance v3, Lcom/yandex/mobile/ads/ar$1;

    invoke-direct {v3, p0, v1, p2, p1}, Lcom/yandex/mobile/ads/ar$1;-><init>(Lcom/yandex/mobile/ads/ar;Ljava/util/List;Lcom/yandex/mobile/ads/nativeads/f;Lcom/yandex/mobile/ads/nativeads/n;)V

    invoke-virtual {v2, v0, v3}, Lcom/yandex/mobile/ads/ao;->a(Ljava/util/Set;Lcom/yandex/mobile/ads/nativeads/h;)V

    .line 144
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 40
    check-cast p1, Lcom/yandex/mobile/ads/n;

    invoke-virtual {p0, p1}, Lcom/yandex/mobile/ads/ar;->a(Lcom/yandex/mobile/ads/n;)V

    return-void
.end method

.method c(Lcom/yandex/mobile/ads/AdRequest;)Z
    .locals 1

    .prologue
    .line 199
    const/4 v0, 0x1

    return v0
.end method

.method public onAdFailedToLoad(Lcom/yandex/mobile/ads/AdRequestError;)V
    .locals 0
    .param p1, "error"    # Lcom/yandex/mobile/ads/AdRequestError;

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/ar;->b(Lcom/yandex/mobile/ads/AdRequestError;)V

    .line 158
    return-void
.end method

.method p()Z
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/yandex/mobile/ads/ar;->q()Z

    move-result v0

    return v0
.end method
