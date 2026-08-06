.class Lcom/yandex/mobile/ads/nativeads/NativeAdLoader$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/ar$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/nativeads/NativeAdLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yandex/mobile/ads/nativeads/NativeAdLoader;


# direct methods
.method constructor <init>(Lcom/yandex/mobile/ads/nativeads/NativeAdLoader;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdLoader$1;->a:Lcom/yandex/mobile/ads/nativeads/NativeAdLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yandex/mobile/ads/AdRequestError;)V
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdLoader$1;->a:Lcom/yandex/mobile/ads/nativeads/NativeAdLoader;

    invoke-static {v0}, Lcom/yandex/mobile/ads/nativeads/NativeAdLoader;->a(Lcom/yandex/mobile/ads/nativeads/NativeAdLoader;)Lcom/yandex/mobile/ads/nativeads/NativeAdLoader$OnLoadListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdLoader$1;->a:Lcom/yandex/mobile/ads/nativeads/NativeAdLoader;

    invoke-static {v0}, Lcom/yandex/mobile/ads/nativeads/NativeAdLoader;->a(Lcom/yandex/mobile/ads/nativeads/NativeAdLoader;)Lcom/yandex/mobile/ads/nativeads/NativeAdLoader$OnLoadListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/yandex/mobile/ads/nativeads/NativeAdLoader$OnLoadListener;->onAdFailedToLoad(Lcom/yandex/mobile/ads/AdRequestError;)V

    .line 54
    :cond_0
    return-void
.end method

.method public a(Lcom/yandex/mobile/ads/nativeads/n;Lcom/yandex/mobile/ads/nativeads/f;)V
    .locals 7

    .prologue
    .line 32
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdLoader$1;->a:Lcom/yandex/mobile/ads/nativeads/NativeAdLoader;

    invoke-static {v0}, Lcom/yandex/mobile/ads/nativeads/NativeAdLoader;->a(Lcom/yandex/mobile/ads/nativeads/NativeAdLoader;)Lcom/yandex/mobile/ads/nativeads/NativeAdLoader$OnLoadListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 33
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/nativeads/n;->a()Lcom/yandex/mobile/ads/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/e;->p()Lcom/yandex/mobile/ads/nativeads/ar;

    move-result-object v0

    .line 34
    sget-object v1, Lcom/yandex/mobile/ads/nativeads/ar;->a:Lcom/yandex/mobile/ads/nativeads/ar;

    if-ne v1, v0, :cond_2

    .line 35
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdLoader$1;->a:Lcom/yandex/mobile/ads/nativeads/NativeAdLoader;

    invoke-static {v0}, Lcom/yandex/mobile/ads/nativeads/NativeAdLoader;->b(Lcom/yandex/mobile/ads/nativeads/NativeAdLoader;)Lcom/yandex/mobile/ads/ar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/ar;->o()Landroid/content/Context;

    move-result-object v1

    .line 36
    invoke-virtual {p1}, Lcom/yandex/mobile/ads/nativeads/n;->c()Lcom/yandex/mobile/ads/nativeads/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/nativeads/t;->b()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yandex/mobile/ads/nativeads/j;

    .line 37
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdLoader$1;->a:Lcom/yandex/mobile/ads/nativeads/NativeAdLoader;

    invoke-static {v0}, Lcom/yandex/mobile/ads/nativeads/NativeAdLoader;->c(Lcom/yandex/mobile/ads/nativeads/NativeAdLoader;)Lcom/yandex/mobile/ads/nativeads/m;

    move-result-object v0

    invoke-virtual {v0, p1, v2}, Lcom/yandex/mobile/ads/nativeads/m;->a(Lcom/yandex/mobile/ads/nativeads/n;Lcom/yandex/mobile/ads/nativeads/j;)Lcom/yandex/mobile/ads/nativeads/au;

    move-result-object v5

    .line 38
    sget-object v0, Lcom/yandex/mobile/ads/nativeads/NativeAdType;->CONTENT:Lcom/yandex/mobile/ads/nativeads/NativeAdType;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/nativeads/j;->b()Lcom/yandex/mobile/ads/nativeads/NativeAdType;

    move-result-object v3

    if-ne v0, v3, :cond_1

    .line 39
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdLoader$1;->a:Lcom/yandex/mobile/ads/nativeads/NativeAdLoader;

    invoke-static {v0}, Lcom/yandex/mobile/ads/nativeads/NativeAdLoader;->a(Lcom/yandex/mobile/ads/nativeads/NativeAdLoader;)Lcom/yandex/mobile/ads/nativeads/NativeAdLoader$OnLoadListener;

    move-result-object v6

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdLoader$1;->a:Lcom/yandex/mobile/ads/nativeads/NativeAdLoader;

    invoke-static {v0}, Lcom/yandex/mobile/ads/nativeads/NativeAdLoader;->c(Lcom/yandex/mobile/ads/nativeads/NativeAdLoader;)Lcom/yandex/mobile/ads/nativeads/m;

    move-result-object v0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/yandex/mobile/ads/nativeads/m;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/nativeads/j;Lcom/yandex/mobile/ads/nativeads/n;Lcom/yandex/mobile/ads/nativeads/f;Lcom/yandex/mobile/ads/nativeads/au;)Lcom/yandex/mobile/ads/nativeads/NativeContentAd;

    move-result-object v0

    invoke-interface {v6, v0}, Lcom/yandex/mobile/ads/nativeads/NativeAdLoader$OnLoadListener;->onContentAdLoaded(Lcom/yandex/mobile/ads/nativeads/NativeContentAd;)V

    .line 47
    :cond_0
    :goto_0
    return-void

    .line 40
    :cond_1
    sget-object v0, Lcom/yandex/mobile/ads/nativeads/NativeAdType;->APP_INSTALL:Lcom/yandex/mobile/ads/nativeads/NativeAdType;

    invoke-virtual {v2}, Lcom/yandex/mobile/ads/nativeads/j;->b()Lcom/yandex/mobile/ads/nativeads/NativeAdType;

    move-result-object v3

    if-ne v0, v3, :cond_0

    .line 41
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdLoader$1;->a:Lcom/yandex/mobile/ads/nativeads/NativeAdLoader;

    invoke-static {v0}, Lcom/yandex/mobile/ads/nativeads/NativeAdLoader;->a(Lcom/yandex/mobile/ads/nativeads/NativeAdLoader;)Lcom/yandex/mobile/ads/nativeads/NativeAdLoader$OnLoadListener;

    move-result-object v6

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdLoader$1;->a:Lcom/yandex/mobile/ads/nativeads/NativeAdLoader;

    invoke-static {v0}, Lcom/yandex/mobile/ads/nativeads/NativeAdLoader;->c(Lcom/yandex/mobile/ads/nativeads/NativeAdLoader;)Lcom/yandex/mobile/ads/nativeads/m;

    move-result-object v0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/yandex/mobile/ads/nativeads/m;->b(Landroid/content/Context;Lcom/yandex/mobile/ads/nativeads/j;Lcom/yandex/mobile/ads/nativeads/n;Lcom/yandex/mobile/ads/nativeads/f;Lcom/yandex/mobile/ads/nativeads/au;)Lcom/yandex/mobile/ads/nativeads/NativeAppInstallAd;

    move-result-object v0

    invoke-interface {v6, v0}, Lcom/yandex/mobile/ads/nativeads/NativeAdLoader$OnLoadListener;->onAppInstallAdLoaded(Lcom/yandex/mobile/ads/nativeads/NativeAppInstallAd;)V

    goto :goto_0

    .line 43
    :cond_2
    sget-object v1, Lcom/yandex/mobile/ads/nativeads/ar;->b:Lcom/yandex/mobile/ads/nativeads/ar;

    if-ne v1, v0, :cond_0

    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdLoader$1;->a:Lcom/yandex/mobile/ads/nativeads/NativeAdLoader;

    invoke-static {v0}, Lcom/yandex/mobile/ads/nativeads/NativeAdLoader;->a(Lcom/yandex/mobile/ads/nativeads/NativeAdLoader;)Lcom/yandex/mobile/ads/nativeads/NativeAdLoader$OnLoadListener;

    move-result-object v0

    instance-of v0, v0, Lcom/yandex/mobile/ads/nativeads/av;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdLoader$1;->a:Lcom/yandex/mobile/ads/nativeads/NativeAdLoader;

    invoke-static {v0}, Lcom/yandex/mobile/ads/nativeads/NativeAdLoader;->c(Lcom/yandex/mobile/ads/nativeads/NativeAdLoader;)Lcom/yandex/mobile/ads/nativeads/m;

    move-result-object v0

    iget-object v1, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdLoader$1;->a:Lcom/yandex/mobile/ads/nativeads/NativeAdLoader;

    invoke-static {v1}, Lcom/yandex/mobile/ads/nativeads/NativeAdLoader;->b(Lcom/yandex/mobile/ads/nativeads/NativeAdLoader;)Lcom/yandex/mobile/ads/ar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yandex/mobile/ads/ar;->o()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/yandex/mobile/ads/nativeads/m;->a(Landroid/content/Context;Lcom/yandex/mobile/ads/nativeads/n;Lcom/yandex/mobile/ads/nativeads/f;)Lcom/yandex/mobile/ads/nativeads/u;

    goto :goto_0
.end method
