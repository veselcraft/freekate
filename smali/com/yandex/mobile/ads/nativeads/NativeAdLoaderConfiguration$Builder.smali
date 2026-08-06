.class public final Lcom/yandex/mobile/ads/nativeads/NativeAdLoaderConfiguration$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/nativeads/NativeAdLoaderConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Z

.field private c:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "blockId"    # Ljava/lang/String;
    .param p2, "shouldLoadImagesAutomatically"    # Z

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p1, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdLoaderConfiguration$Builder;->a:Ljava/lang/String;

    .line 91
    iput-boolean p2, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdLoaderConfiguration$Builder;->b:Z

    .line 93
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "small"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "medium"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "large"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdLoaderConfiguration$Builder;->c:[Ljava/lang/String;

    .line 94
    return-void
.end method

.method static synthetic a(Lcom/yandex/mobile/ads/nativeads/NativeAdLoaderConfiguration$Builder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdLoaderConfiguration$Builder;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/yandex/mobile/ads/nativeads/NativeAdLoaderConfiguration$Builder;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdLoaderConfiguration$Builder;->c:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/yandex/mobile/ads/nativeads/NativeAdLoaderConfiguration$Builder;)Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdLoaderConfiguration$Builder;->b:Z

    return v0
.end method


# virtual methods
.method public build()Lcom/yandex/mobile/ads/nativeads/NativeAdLoaderConfiguration;
    .locals 2

    .prologue
    .line 103
    new-instance v0, Lcom/yandex/mobile/ads/nativeads/NativeAdLoaderConfiguration;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/yandex/mobile/ads/nativeads/NativeAdLoaderConfiguration;-><init>(Lcom/yandex/mobile/ads/nativeads/NativeAdLoaderConfiguration$Builder;B)V

    return-object v0
.end method

.method public varargs setImageSizes([Ljava/lang/String;)Lcom/yandex/mobile/ads/nativeads/NativeAdLoaderConfiguration$Builder;
    .locals 0
    .param p1, "imageSizes"    # [Ljava/lang/String;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdLoaderConfiguration$Builder;->c:[Ljava/lang/String;

    .line 115
    return-object p0
.end method
