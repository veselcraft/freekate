.class public final enum Lcom/yandex/mobile/ads/video/models/ad/MediaFile$DeliveryMethod;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/video/models/ad/MediaFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DeliveryMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yandex/mobile/ads/video/models/ad/MediaFile$DeliveryMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yandex/mobile/ads/video/models/ad/MediaFile$DeliveryMethod;

.field public static final enum PROGRESSIVE:Lcom/yandex/mobile/ads/video/models/ad/MediaFile$DeliveryMethod;

.field public static final enum STREAMING:Lcom/yandex/mobile/ads/video/models/ad/MediaFile$DeliveryMethod;


# instance fields
.field private mDeliveryMethod:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 25
    new-instance v0, Lcom/yandex/mobile/ads/video/models/ad/MediaFile$DeliveryMethod;

    const-string v1, "STREAMING"

    const-string v2, "streaming"

    invoke-direct {v0, v1, v3, v2}, Lcom/yandex/mobile/ads/video/models/ad/MediaFile$DeliveryMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yandex/mobile/ads/video/models/ad/MediaFile$DeliveryMethod;->STREAMING:Lcom/yandex/mobile/ads/video/models/ad/MediaFile$DeliveryMethod;

    .line 26
    new-instance v0, Lcom/yandex/mobile/ads/video/models/ad/MediaFile$DeliveryMethod;

    const-string v1, "PROGRESSIVE"

    const-string v2, "progressive"

    invoke-direct {v0, v1, v4, v2}, Lcom/yandex/mobile/ads/video/models/ad/MediaFile$DeliveryMethod;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yandex/mobile/ads/video/models/ad/MediaFile$DeliveryMethod;->PROGRESSIVE:Lcom/yandex/mobile/ads/video/models/ad/MediaFile$DeliveryMethod;

    .line 23
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/yandex/mobile/ads/video/models/ad/MediaFile$DeliveryMethod;

    sget-object v1, Lcom/yandex/mobile/ads/video/models/ad/MediaFile$DeliveryMethod;->STREAMING:Lcom/yandex/mobile/ads/video/models/ad/MediaFile$DeliveryMethod;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yandex/mobile/ads/video/models/ad/MediaFile$DeliveryMethod;->PROGRESSIVE:Lcom/yandex/mobile/ads/video/models/ad/MediaFile$DeliveryMethod;

    aput-object v1, v0, v4

    sput-object v0, Lcom/yandex/mobile/ads/video/models/ad/MediaFile$DeliveryMethod;->$VALUES:[Lcom/yandex/mobile/ads/video/models/ad/MediaFile$DeliveryMethod;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "deliveryMethod"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    iput-object p3, p0, Lcom/yandex/mobile/ads/video/models/ad/MediaFile$DeliveryMethod;->mDeliveryMethod:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public static getByMethod(Ljava/lang/String;)Lcom/yandex/mobile/ads/video/models/ad/MediaFile$DeliveryMethod;
    .locals 5
    .param p0, "method"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-static {}, Lcom/yandex/mobile/ads/video/models/ad/MediaFile$DeliveryMethod;->values()[Lcom/yandex/mobile/ads/video/models/ad/MediaFile$DeliveryMethod;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 36
    iget-object v4, v0, Lcom/yandex/mobile/ads/video/models/ad/MediaFile$DeliveryMethod;->mDeliveryMethod:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 41
    :goto_1
    return-object v0

    .line 35
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 41
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yandex/mobile/ads/video/models/ad/MediaFile$DeliveryMethod;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 23
    const-class v0, Lcom/yandex/mobile/ads/video/models/ad/MediaFile$DeliveryMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/video/models/ad/MediaFile$DeliveryMethod;

    return-object v0
.end method

.method public static values()[Lcom/yandex/mobile/ads/video/models/ad/MediaFile$DeliveryMethod;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/yandex/mobile/ads/video/models/ad/MediaFile$DeliveryMethod;->$VALUES:[Lcom/yandex/mobile/ads/video/models/ad/MediaFile$DeliveryMethod;

    invoke-virtual {v0}, [Lcom/yandex/mobile/ads/video/models/ad/MediaFile$DeliveryMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yandex/mobile/ads/video/models/ad/MediaFile$DeliveryMethod;

    return-object v0
.end method
