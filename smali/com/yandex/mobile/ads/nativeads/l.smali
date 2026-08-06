.class public abstract Lcom/yandex/mobile/ads/nativeads/l;
.super Lcom/yandex/mobile/ads/nativeads/ao;
.source "SourceFile"

# interfaces
.implements Lcom/yandex/mobile/ads/nativeads/an;
.implements Lcom/yandex/mobile/ads/nativeads/r;


# instance fields
.field protected a:Lcom/yandex/mobile/ads/nativeads/f;

.field private final b:Lcom/yandex/mobile/ads/nativeads/j;

.field private final c:Lcom/yandex/mobile/ads/nativeads/q;

.field private d:Lcom/yandex/mobile/ads/nativeads/ao$a;

.field private final e:Lcom/yandex/mobile/ads/report/b$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/nativeads/j;Lcom/yandex/mobile/ads/nativeads/f;Lcom/yandex/mobile/ads/nativeads/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/yandex/mobile/ads/nativeads/j;",
            "Lcom/yandex/mobile/ads/nativeads/f;",
            "Lcom/yandex/mobile/ads/nativeads/d",
            "<",
            "Lcom/yandex/mobile/ads/nativeads/q;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0, p1, p4}, Lcom/yandex/mobile/ads/nativeads/ao;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/nativeads/d;)V

    .line 33
    sget-object v0, Lcom/yandex/mobile/ads/nativeads/ao$a;->a:Lcom/yandex/mobile/ads/nativeads/ao$a;

    iput-object v0, p0, Lcom/yandex/mobile/ads/nativeads/l;->d:Lcom/yandex/mobile/ads/nativeads/ao$a;

    .line 91
    new-instance v0, Lcom/yandex/mobile/ads/nativeads/l$1;

    invoke-direct {v0, p0}, Lcom/yandex/mobile/ads/nativeads/l$1;-><init>(Lcom/yandex/mobile/ads/nativeads/l;)V

    iput-object v0, p0, Lcom/yandex/mobile/ads/nativeads/l;->e:Lcom/yandex/mobile/ads/report/b$a;

    .line 40
    iput-object p3, p0, Lcom/yandex/mobile/ads/nativeads/l;->a:Lcom/yandex/mobile/ads/nativeads/f;

    .line 41
    iput-object p2, p0, Lcom/yandex/mobile/ads/nativeads/l;->b:Lcom/yandex/mobile/ads/nativeads/j;

    .line 42
    invoke-virtual {p4}, Lcom/yandex/mobile/ads/nativeads/d;->c()Lcom/yandex/mobile/ads/nativeads/ap;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/nativeads/q;

    iput-object v0, p0, Lcom/yandex/mobile/ads/nativeads/l;->c:Lcom/yandex/mobile/ads/nativeads/q;

    .line 44
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/l;->e:Lcom/yandex/mobile/ads/report/b$a;

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/nativeads/l;->a(Lcom/yandex/mobile/ads/report/b$a;)V

    .line 45
    return-void
.end method

.method static synthetic a(Lcom/yandex/mobile/ads/nativeads/l;)Lcom/yandex/mobile/ads/nativeads/ao$a;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/l;->d:Lcom/yandex/mobile/ads/nativeads/ao$a;

    return-object v0
.end method

.method static synthetic b(Lcom/yandex/mobile/ads/nativeads/l;)Lcom/yandex/mobile/ads/nativeads/j;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/l;->b:Lcom/yandex/mobile/ads/nativeads/j;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/yandex/mobile/ads/nativeads/NativeAdException;
        }
    .end annotation

    .prologue
    .line 59
    sget-object v0, Lcom/yandex/mobile/ads/nativeads/ao$a;->b:Lcom/yandex/mobile/ads/nativeads/ao$a;

    iput-object v0, p0, Lcom/yandex/mobile/ads/nativeads/l;->d:Lcom/yandex/mobile/ads/nativeads/ao$a;

    .line 61
    new-instance v0, Lcom/yandex/mobile/ads/nativeads/template/b;

    iget-object v1, p0, Lcom/yandex/mobile/ads/nativeads/l;->a:Lcom/yandex/mobile/ads/nativeads/f;

    invoke-direct {v0, p1, v1}, Lcom/yandex/mobile/ads/nativeads/template/b;-><init>(Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;Lcom/yandex/mobile/ads/nativeads/f;)V

    invoke-virtual {p0, v0}, Lcom/yandex/mobile/ads/nativeads/l;->a(Lcom/yandex/mobile/ads/nativeads/ac;)V

    .line 62
    invoke-virtual {p1, p0}, Lcom/yandex/mobile/ads/nativeads/template/NativeBannerView;->a(Lcom/yandex/mobile/ads/nativeads/ao;)V

    .line 63
    return-void
.end method

.method public addImageLoadingListener(Lcom/yandex/mobile/ads/nativeads/NativeAdImageLoadingListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/yandex/mobile/ads/nativeads/NativeAdImageLoadingListener;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/l;->c:Lcom/yandex/mobile/ads/nativeads/q;

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/nativeads/q;->addImageLoadingListener(Lcom/yandex/mobile/ads/nativeads/NativeAdImageLoadingListener;)V

    .line 78
    return-void
.end method

.method public getAdAssets()Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/l;->c:Lcom/yandex/mobile/ads/nativeads/q;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/nativeads/q;->getAdAssets()Lcom/yandex/mobile/ads/nativeads/NativeAdAssets;

    move-result-object v0

    return-object v0
.end method

.method public getAdType()Lcom/yandex/mobile/ads/nativeads/NativeAdType;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/l;->c:Lcom/yandex/mobile/ads/nativeads/q;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/nativeads/q;->getAdType()Lcom/yandex/mobile/ads/nativeads/NativeAdType;

    move-result-object v0

    return-object v0
.end method

.method public loadImages()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/l;->c:Lcom/yandex/mobile/ads/nativeads/q;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/nativeads/q;->loadImages()V

    .line 73
    return-void
.end method

.method public removeImageLoadingListener(Lcom/yandex/mobile/ads/nativeads/NativeAdImageLoadingListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/yandex/mobile/ads/nativeads/NativeAdImageLoadingListener;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/l;->c:Lcom/yandex/mobile/ads/nativeads/q;

    invoke-virtual {v0, p1}, Lcom/yandex/mobile/ads/nativeads/q;->removeImageLoadingListener(Lcom/yandex/mobile/ads/nativeads/NativeAdImageLoadingListener;)V

    .line 83
    return-void
.end method
