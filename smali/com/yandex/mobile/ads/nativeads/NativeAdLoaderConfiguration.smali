.class public final Lcom/yandex/mobile/ads/nativeads/NativeAdLoaderConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yandex/mobile/ads/nativeads/NativeAdLoaderConfiguration$Builder;
    }
.end annotation


# static fields
.field public static final NATIVE_IMAGE_SIZE_LARGE:Ljava/lang/String; = "large"

.field public static final NATIVE_IMAGE_SIZE_MEDIUM:Ljava/lang/String; = "medium"

.field public static final NATIVE_IMAGE_SIZE_SMALL:Ljava/lang/String; = "small"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:[Ljava/lang/String;

.field private final c:Z


# direct methods
.method private constructor <init>(Lcom/yandex/mobile/ads/nativeads/NativeAdLoaderConfiguration$Builder;)V
    .locals 1
    .param p1, "builder"    # Lcom/yandex/mobile/ads/nativeads/NativeAdLoaderConfiguration$Builder;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-static {p1}, Lcom/yandex/mobile/ads/nativeads/NativeAdLoaderConfiguration$Builder;->a(Lcom/yandex/mobile/ads/nativeads/NativeAdLoaderConfiguration$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdLoaderConfiguration;->a:Ljava/lang/String;

    .line 37
    invoke-static {p1}, Lcom/yandex/mobile/ads/nativeads/NativeAdLoaderConfiguration$Builder;->b(Lcom/yandex/mobile/ads/nativeads/NativeAdLoaderConfiguration$Builder;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdLoaderConfiguration;->b:[Ljava/lang/String;

    .line 38
    invoke-static {p1}, Lcom/yandex/mobile/ads/nativeads/NativeAdLoaderConfiguration$Builder;->c(Lcom/yandex/mobile/ads/nativeads/NativeAdLoaderConfiguration$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdLoaderConfiguration;->c:Z

    .line 39
    return-void
.end method

.method synthetic constructor <init>(Lcom/yandex/mobile/ads/nativeads/NativeAdLoaderConfiguration$Builder;B)V
    .locals 0
    .param p1, "x0"    # Lcom/yandex/mobile/ads/nativeads/NativeAdLoaderConfiguration$Builder;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/yandex/mobile/ads/nativeads/NativeAdLoaderConfiguration;-><init>(Lcom/yandex/mobile/ads/nativeads/NativeAdLoaderConfiguration$Builder;)V

    return-void
.end method


# virtual methods
.method public getBlockId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdLoaderConfiguration;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getImageSizes()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdLoaderConfiguration;->b:[Ljava/lang/String;

    return-object v0
.end method

.method public shouldLoadImagesAutomatically()Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdLoaderConfiguration;->c:Z

    return v0
.end method
