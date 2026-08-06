.class public Lcom/my/target/nativeads/NativeAd;
.super Lcom/my/target/core/facades/b;
.source "NativeAd.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/my/target/nativeads/NativeAd$NativeAdListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/my/target/core/facades/b",
        "<",
        "Lcom/my/target/nativeads/banners/NativePromoBanner;",
        ">;"
    }
.end annotation


# static fields
.field private static final supportedFormats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/my/target/nativeads/NativeAd$1;

    invoke-direct {v0}, Lcom/my/target/nativeads/NativeAd$1;-><init>()V

    sput-object v0, Lcom/my/target/nativeads/NativeAd;->supportedFormats:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(ILandroid/content/Context;)V
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/my/target/nativeads/NativeAd;->supportedFormats:Ljava/util/List;

    invoke-direct {p0, p1, v0, p2}, Lcom/my/target/core/facades/b;-><init>(ILjava/util/List;Landroid/content/Context;)V

    .line 44
    const-string v0, "NativeAd created. Version: 4.6.10"

    invoke-static {v0}, Lcom/my/target/core/b;->c(Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method public static loadImageToView(Lcom/my/target/nativeads/models/ImageData;Landroid/widget/ImageView;)V
    .locals 1

    .prologue
    .line 32
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 34
    :cond_0
    const-string v0, "AbstractNativeAd: invalid or null arguments"

    invoke-static {v0}, Lcom/my/target/core/b;->c(Ljava/lang/String;)V

    .line 39
    :goto_0
    return-void

    .line 38
    :cond_1
    invoke-static {}, Lcom/my/target/core/net/b;->a()Lcom/my/target/core/net/b;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/my/target/core/net/b;->a(Lcom/my/target/nativeads/models/ImageData;Landroid/widget/ImageView;)V

    goto :goto_0
.end method

.method public static setDebugMode(Z)V
    .locals 1

    .prologue
    .line 25
    sput-boolean p0, Lcom/my/target/core/b;->a:Z

    .line 26
    if-eqz p0, :cond_0

    .line 27
    const-string v0, "Debug mode enabled"

    invoke-static {v0}, Lcom/my/target/core/b;->a(Ljava/lang/String;)V

    .line 28
    :cond_0
    return-void
.end method
