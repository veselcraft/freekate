.class public Lcom/yandex/mobile/ads/nativeads/q;
.super Lcom/yandex/mobile/ads/nativeads/ap;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/nativeads/NativeGenericAd;


# instance fields
.field private final a:Lcom/yandex/mobile/ads/nativeads/f;

.field private final b:Lcom/yandex/mobile/ads/nativeads/j;

.field private final c:Lcom/yandex/mobile/ads/ao;

.field private d:Lcom/yandex/mobile/ads/nativeads/ad;

.field private e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/yandex/mobile/ads/nativeads/NativeAdImageLoadingListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/nativeads/j;Lcom/yandex/mobile/ads/n;Lcom/yandex/mobile/ads/nativeads/f;Lcom/yandex/mobile/ads/e;)V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0, p1, p3, p5}, Lcom/yandex/mobile/ads/nativeads/ap;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/n;Lcom/yandex/mobile/ads/e;)V

    .line 46
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 47
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/nativeads/q;->e:Ljava/util/Set;

    .line 56
    iput-object p2, p0, Lcom/yandex/mobile/ads/nativeads/q;->b:Lcom/yandex/mobile/ads/nativeads/j;

    .line 57
    iput-object p4, p0, Lcom/yandex/mobile/ads/nativeads/q;->a:Lcom/yandex/mobile/ads/nativeads/f;

    .line 59
    new-instance v0, Lcom/yandex/mobile/ads/ao;

    invoke-direct {v0, p1}, Lcom/yandex/mobile/ads/ao;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yandex/mobile/ads/nativeads/q;->c:Lcom/yandex/mobile/ads/ao;

    .line 60
    return-void
.end method

.method static synthetic a(Lcom/yandex/mobile/ads/nativeads/q;)Lcom/yandex/mobile/ads/nativeads/ad;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/q;->d:Lcom/yandex/mobile/ads/nativeads/ad;

    return-object v0
.end method

.method static a(Lcom/yandex/mobile/ads/nativeads/c;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/yandex/mobile/ads/nativeads/c",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 142
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/yandex/mobile/ads/nativeads/c;->a()Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/yandex/mobile/ads/nativeads/q;)Ljava/util/Set;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/q;->e:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/yandex/mobile/ads/nativeads/ad;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/yandex/mobile/ads/nativeads/q;->d:Lcom/yandex/mobile/ads/nativeads/ad;

    .line 69
    return-void
.end method

.method public declared-synchronized addImageLoadingListener(Lcom/yandex/mobile/ads/nativeads/NativeAdImageLoadingListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/yandex/mobile/ads/nativeads/NativeAdImageLoadingListener;

    .prologue
    .line 103
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/q;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/q;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    :cond_0
    monitor-exit p0

    return-void

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAdAssets()Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;
    .locals 5

    .prologue
    .line 115
    new-instance v1, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;

    invoke-direct {v1}, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;-><init>()V

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/q;->b:Lcom/yandex/mobile/ads/nativeads/j;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/nativeads/j;->c()Ljava/util/List;

    move-result-object v0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/nativeads/c;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/nativeads/c;->b()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v0, "age"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/nativeads/c;

    invoke-static {v0}, Lcom/yandex/mobile/ads/nativeads/q;->a(Lcom/yandex/mobile/ads/nativeads/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->a(Ljava/lang/String;)V

    const-string v0, "body"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/nativeads/c;

    invoke-static {v0}, Lcom/yandex/mobile/ads/nativeads/q;->a(Lcom/yandex/mobile/ads/nativeads/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->b(Ljava/lang/String;)V

    const-string v0, "call_to_action"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/nativeads/c;

    invoke-static {v0}, Lcom/yandex/mobile/ads/nativeads/q;->a(Lcom/yandex/mobile/ads/nativeads/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->c(Ljava/lang/String;)V

    const-string v0, "domain"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/nativeads/c;

    invoke-static {v0}, Lcom/yandex/mobile/ads/nativeads/q;->a(Lcom/yandex/mobile/ads/nativeads/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->d(Ljava/lang/String;)V

    const-string v0, "favicon"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/nativeads/c;

    invoke-static {v0}, Lcom/yandex/mobile/ads/nativeads/q;->a(Lcom/yandex/mobile/ads/nativeads/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/nativeads/g;

    iget-object v3, p0, Lcom/yandex/mobile/ads/nativeads/q;->a:Lcom/yandex/mobile/ads/nativeads/f;

    invoke-virtual {v1, v0, v3}, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->a(Lcom/yandex/mobile/ads/nativeads/g;Lcom/yandex/mobile/ads/nativeads/f;)V

    const-string v0, "icon"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/nativeads/c;

    invoke-static {v0}, Lcom/yandex/mobile/ads/nativeads/q;->a(Lcom/yandex/mobile/ads/nativeads/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/nativeads/g;

    iget-object v3, p0, Lcom/yandex/mobile/ads/nativeads/q;->a:Lcom/yandex/mobile/ads/nativeads/f;

    invoke-virtual {v1, v0, v3}, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->b(Lcom/yandex/mobile/ads/nativeads/g;Lcom/yandex/mobile/ads/nativeads/f;)V

    const-string v0, "image"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/nativeads/c;

    invoke-static {v0}, Lcom/yandex/mobile/ads/nativeads/q;->a(Lcom/yandex/mobile/ads/nativeads/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/nativeads/g;

    iget-object v3, p0, Lcom/yandex/mobile/ads/nativeads/q;->a:Lcom/yandex/mobile/ads/nativeads/f;

    invoke-virtual {v1, v0, v3}, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->c(Lcom/yandex/mobile/ads/nativeads/g;Lcom/yandex/mobile/ads/nativeads/f;)V

    const-string v0, "price"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/nativeads/c;

    invoke-static {v0}, Lcom/yandex/mobile/ads/nativeads/q;->a(Lcom/yandex/mobile/ads/nativeads/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->e(Ljava/lang/String;)V

    const-string v0, "rating"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/nativeads/c;

    invoke-static {v0}, Lcom/yandex/mobile/ads/nativeads/q;->a(Lcom/yandex/mobile/ads/nativeads/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->f(Ljava/lang/String;)V

    const-string v0, "review_count"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/nativeads/c;

    invoke-static {v0}, Lcom/yandex/mobile/ads/nativeads/q;->a(Lcom/yandex/mobile/ads/nativeads/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->g(Ljava/lang/String;)V

    const-string v0, "sponsored"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/nativeads/c;

    invoke-static {v0}, Lcom/yandex/mobile/ads/nativeads/q;->a(Lcom/yandex/mobile/ads/nativeads/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->h(Ljava/lang/String;)V

    const-string v0, "title"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/nativeads/c;

    invoke-static {v0}, Lcom/yandex/mobile/ads/nativeads/q;->a(Lcom/yandex/mobile/ads/nativeads/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->i(Ljava/lang/String;)V

    const-string v0, "warning"

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/nativeads/c;

    invoke-static {v0}, Lcom/yandex/mobile/ads/nativeads/q;->a(Lcom/yandex/mobile/ads/nativeads/c;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;->j(Ljava/lang/String;)V

    return-object v1
.end method

.method public getAdType()Lcom/yandex/mobile/ads/nativeads/NativeAdType;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/q;->b:Lcom/yandex/mobile/ads/nativeads/j;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/nativeads/j;->b()Lcom/yandex/mobile/ads/nativeads/NativeAdType;

    move-result-object v0

    return-object v0
.end method

.method public loadImages()V
    .locals 4

    .prologue
    .line 73
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/q;->c:Lcom/yandex/mobile/ads/ao;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/yandex/mobile/ads/nativeads/j;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/yandex/mobile/ads/nativeads/q;->b:Lcom/yandex/mobile/ads/nativeads/j;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/ao;->a([Lcom/yandex/mobile/ads/nativeads/j;)Ljava/util/Set;

    move-result-object v0

    .line 74
    iget-object v1, p0, Lcom/yandex/mobile/ads/nativeads/q;->c:Lcom/yandex/mobile/ads/ao;

    new-instance v2, Lcom/yandex/mobile/ads/nativeads/q$1;

    invoke-direct {v2, p0}, Lcom/yandex/mobile/ads/nativeads/q$1;-><init>(Lcom/yandex/mobile/ads/nativeads/q;)V

    invoke-virtual {v1, v0, v2}, Lcom/yandex/mobile/ads/ao;->a(Ljava/util/Set;Lcom/yandex/mobile/ads/nativeads/h;)V

    .line 99
    return-void
.end method

.method public declared-synchronized removeImageLoadingListener(Lcom/yandex/mobile/ads/nativeads/NativeAdImageLoadingListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/yandex/mobile/ads/nativeads/NativeAdImageLoadingListener;

    .prologue
    .line 110
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/q;->e:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    monitor-exit p0

    return-void

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
