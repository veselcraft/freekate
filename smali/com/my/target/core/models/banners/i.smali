.class public final Lcom/my/target/core/models/banners/i;
.super Lcom/my/target/core/models/banners/a;
.source "NativeAdCard.java"

# interfaces
.implements Lcom/my/target/nativeads/banners/NativePromoCard;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcom/my/target/nativeads/models/ImageData;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/my/target/core/models/banners/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    return-void
.end method


# virtual methods
.method public final a(Lcom/my/target/nativeads/models/ImageData;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/my/target/core/models/banners/i;->c:Lcom/my/target/nativeads/models/ImageData;

    .line 35
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/my/target/core/models/banners/i;->b:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/my/target/core/models/banners/i;->a:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/my/target/core/models/banners/i;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getImage()Lcom/my/target/nativeads/models/ImageData;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/my/target/core/models/banners/i;->c:Lcom/my/target/nativeads/models/ImageData;

    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/my/target/core/models/banners/i;->a:Ljava/lang/String;

    return-object v0
.end method
