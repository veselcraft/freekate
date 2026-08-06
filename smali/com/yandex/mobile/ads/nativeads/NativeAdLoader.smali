.class public Lcom/yandex/mobile/ads/nativeads/NativeAdLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/nativeads/NativeAdLoader$OnLoadListener;
    }
.end annotation


# instance fields
.field a:Lcom/yandex/mobile/ads/ar$a;

.field private final b:Lcom/yandex/mobile/ads/ar;

.field private final c:Lcom/yandex/mobile/ads/nativeads/m;

.field private d:Lcom/yandex/mobile/ads/nativeads/NativeAdLoader$OnLoadListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yandex/mobile/ads/nativeads/NativeAdLoaderConfiguration;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "configuration"    # Lcom/yandex/mobile/ads/nativeads/NativeAdLoaderConfiguration;

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/yandex/mobile/ads/nativeads/NativeAdLoader$1;

    invoke-direct {v0, p0}, Lcom/yandex/mobile/ads/nativeads/NativeAdLoader$1;-><init>(Lcom/yandex/mobile/ads/nativeads/NativeAdLoader;)V

    iput-object v0, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdLoader;->a:Lcom/yandex/mobile/ads/ar$a;

    .line 80
    new-instance v0, Lcom/yandex/mobile/ads/ar;

    iget-object v1, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdLoader;->a:Lcom/yandex/mobile/ads/ar$a;

    invoke-direct {v0, p1, p2, v1}, Lcom/yandex/mobile/ads/ar;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/nativeads/NativeAdLoaderConfiguration;Lcom/yandex/mobile/ads/ar$a;)V

    iput-object v0, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdLoader;->b:Lcom/yandex/mobile/ads/ar;

    .line 81
    new-instance v0, Lcom/yandex/mobile/ads/nativeads/m;

    invoke-direct {v0}, Lcom/yandex/mobile/ads/nativeads/m;-><init>()V

    iput-object v0, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdLoader;->c:Lcom/yandex/mobile/ads/nativeads/m;

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "blockId"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 68
    new-instance v0, Lcom/yandex/mobile/ads/nativeads/NativeAdLoaderConfiguration$Builder;

    invoke-direct {v0, p2, v1}, Lcom/yandex/mobile/ads/nativeads/NativeAdLoaderConfiguration$Builder;-><init>(Ljava/lang/String;Z)V

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "small"

    aput-object v3, v1, v2

    .line 69
    invoke-virtual {v0, v1}, Lcom/yandex/mobile/ads/nativeads/NativeAdLoaderConfiguration$Builder;->setImageSizes([Ljava/lang/String;)Lcom/yandex/mobile/ads/nativeads/NativeAdLoaderConfiguration$Builder;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Lcom/yandex/mobile/ads/nativeads/NativeAdLoaderConfiguration$Builder;->build()Lcom/yandex/mobile/ads/nativeads/NativeAdLoaderConfiguration;

    move-result-object v0

    .line 68
    invoke-direct {p0, p1, v0}, Lcom/yandex/mobile/ads/nativeads/NativeAdLoader;-><init>(Landroid/content/Context;Lcom/yandex/mobile/ads/nativeads/NativeAdLoaderConfiguration;)V

    .line 71
    return-void
.end method

.method static synthetic a(Lcom/yandex/mobile/ads/nativeads/NativeAdLoader;)Lcom/yandex/mobile/ads/nativeads/NativeAdLoader$OnLoadListener;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdLoader;->d:Lcom/yandex/mobile/ads/nativeads/NativeAdLoader$OnLoadListener;

    return-object v0
.end method

.method static synthetic b(Lcom/yandex/mobile/ads/nativeads/NativeAdLoader;)Lcom/yandex/mobile/ads/ar;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdLoader;->b:Lcom/yandex/mobile/ads/ar;

    return-object v0
.end method

.method static synthetic c(Lcom/yandex/mobile/ads/nativeads/NativeAdLoader;)Lcom/yandex/mobile/ads/nativeads/m;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdLoader;->c:Lcom/yandex/mobile/ads/nativeads/m;

    return-object v0
.end method


# virtual methods
.method a(Lcom/yandex/mobile/ads/AdRequest;Lcom/yandex/mobile/ads/nativeads/ar;)V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdLoader;->b:Lcom/yandex/mobile/ads/ar;

    invoke-virtual {v0, p1, p2}, Lcom/yandex/mobile/ads/ar;->a(Lcom/yandex/mobile/ads/AdRequest;Lcom/yandex/mobile/ads/nativeads/ar;)V

    .line 104
    return-void
.end method

.method public cancelLoading()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdLoader;->b:Lcom/yandex/mobile/ads/ar;

    invoke-virtual {v0}, Lcom/yandex/mobile/ads/ar;->a()V

    .line 111
    return-void
.end method

.method public loadAd(Lcom/yandex/mobile/ads/AdRequest;)V
    .locals 1
    .param p1, "request"    # Lcom/yandex/mobile/ads/AdRequest;

    .prologue
    .line 99
    sget-object v0, Lcom/yandex/mobile/ads/nativeads/ar;->a:Lcom/yandex/mobile/ads/nativeads/ar;

    invoke-virtual {p0, p1, v0}, Lcom/yandex/mobile/ads/nativeads/NativeAdLoader;->a(Lcom/yandex/mobile/ads/AdRequest;Lcom/yandex/mobile/ads/nativeads/ar;)V

    .line 100
    return-void
.end method

.method public setOnLoadListener(Lcom/yandex/mobile/ads/nativeads/NativeAdLoader$OnLoadListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/yandex/mobile/ads/nativeads/NativeAdLoader$OnLoadListener;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdLoader;->d:Lcom/yandex/mobile/ads/nativeads/NativeAdLoader$OnLoadListener;

    .line 91
    return-void
.end method
