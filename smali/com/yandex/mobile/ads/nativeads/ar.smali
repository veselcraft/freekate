.class public final enum Lcom/yandex/mobile/ads/nativeads/ar;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yandex/mobile/ads/nativeads/ar;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/yandex/mobile/ads/nativeads/ar;

.field public static final enum b:Lcom/yandex/mobile/ads/nativeads/ar;

.field private static final synthetic d:[Lcom/yandex/mobile/ads/nativeads/ar;


# instance fields
.field private final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 14
    new-instance v0, Lcom/yandex/mobile/ads/nativeads/ar;

    const-string v1, "AD"

    const-string v2, "ad"

    invoke-direct {v0, v1, v3, v2}, Lcom/yandex/mobile/ads/nativeads/ar;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yandex/mobile/ads/nativeads/ar;->a:Lcom/yandex/mobile/ads/nativeads/ar;

    .line 15
    new-instance v0, Lcom/yandex/mobile/ads/nativeads/ar;

    const-string v1, "AD_UNIT"

    const-string v2, "ad_unit"

    invoke-direct {v0, v1, v4, v2}, Lcom/yandex/mobile/ads/nativeads/ar;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yandex/mobile/ads/nativeads/ar;->b:Lcom/yandex/mobile/ads/nativeads/ar;

    .line 12
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/yandex/mobile/ads/nativeads/ar;

    sget-object v1, Lcom/yandex/mobile/ads/nativeads/ar;->a:Lcom/yandex/mobile/ads/nativeads/ar;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yandex/mobile/ads/nativeads/ar;->b:Lcom/yandex/mobile/ads/nativeads/ar;

    aput-object v1, v0, v4

    sput-object v0, Lcom/yandex/mobile/ads/nativeads/ar;->d:[Lcom/yandex/mobile/ads/nativeads/ar;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    iput-object p3, p0, Lcom/yandex/mobile/ads/nativeads/ar;->c:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yandex/mobile/ads/nativeads/ar;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 12
    const-class v0, Lcom/yandex/mobile/ads/nativeads/ar;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/nativeads/ar;

    return-object v0
.end method

.method public static values()[Lcom/yandex/mobile/ads/nativeads/ar;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/yandex/mobile/ads/nativeads/ar;->d:[Lcom/yandex/mobile/ads/nativeads/ar;

    invoke-virtual {v0}, [Lcom/yandex/mobile/ads/nativeads/ar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yandex/mobile/ads/nativeads/ar;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/yandex/mobile/ads/nativeads/ar;->c:Ljava/lang/String;

    return-object v0
.end method
