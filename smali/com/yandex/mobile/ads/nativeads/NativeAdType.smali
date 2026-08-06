.class public final enum Lcom/yandex/mobile/ads/nativeads/NativeAdType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yandex/mobile/ads/nativeads/NativeAdType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum APP_INSTALL:Lcom/yandex/mobile/ads/nativeads/NativeAdType;

.field public static final enum CONTENT:Lcom/yandex/mobile/ads/nativeads/NativeAdType;

.field private static final synthetic b:[Lcom/yandex/mobile/ads/nativeads/NativeAdType;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 19
    new-instance v0, Lcom/yandex/mobile/ads/nativeads/NativeAdType;

    const-string v1, "CONTENT"

    const-string v2, "content"

    invoke-direct {v0, v1, v3, v2}, Lcom/yandex/mobile/ads/nativeads/NativeAdType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yandex/mobile/ads/nativeads/NativeAdType;->CONTENT:Lcom/yandex/mobile/ads/nativeads/NativeAdType;

    .line 24
    new-instance v0, Lcom/yandex/mobile/ads/nativeads/NativeAdType;

    const-string v1, "APP_INSTALL"

    const-string v2, "app"

    invoke-direct {v0, v1, v4, v2}, Lcom/yandex/mobile/ads/nativeads/NativeAdType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yandex/mobile/ads/nativeads/NativeAdType;->APP_INSTALL:Lcom/yandex/mobile/ads/nativeads/NativeAdType;

    .line 14
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/yandex/mobile/ads/nativeads/NativeAdType;

    sget-object v1, Lcom/yandex/mobile/ads/nativeads/NativeAdType;->CONTENT:Lcom/yandex/mobile/ads/nativeads/NativeAdType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yandex/mobile/ads/nativeads/NativeAdType;->APP_INSTALL:Lcom/yandex/mobile/ads/nativeads/NativeAdType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/yandex/mobile/ads/nativeads/NativeAdType;->b:[Lcom/yandex/mobile/ads/nativeads/NativeAdType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 29
    iput-object p3, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdType;->a:Ljava/lang/String;

    .line 30
    return-void
.end method

.method static a(Ljava/lang/String;)Lcom/yandex/mobile/ads/nativeads/NativeAdType;
    .locals 5

    .prologue
    .line 37
    invoke-static {}, Lcom/yandex/mobile/ads/nativeads/NativeAdType;->values()[Lcom/yandex/mobile/ads/nativeads/NativeAdType;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 38
    iget-object v4, v0, Lcom/yandex/mobile/ads/nativeads/NativeAdType;->a:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 42
    :goto_1
    return-object v0

    .line 37
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 42
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yandex/mobile/ads/nativeads/NativeAdType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 14
    const-class v0, Lcom/yandex/mobile/ads/nativeads/NativeAdType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/nativeads/NativeAdType;

    return-object v0
.end method

.method public static values()[Lcom/yandex/mobile/ads/nativeads/NativeAdType;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/yandex/mobile/ads/nativeads/NativeAdType;->b:[Lcom/yandex/mobile/ads/nativeads/NativeAdType;

    invoke-virtual {v0}, [Lcom/yandex/mobile/ads/nativeads/NativeAdType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yandex/mobile/ads/nativeads/NativeAdType;

    return-object v0
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/NativeAdType;->a:Ljava/lang/String;

    return-object v0
.end method
