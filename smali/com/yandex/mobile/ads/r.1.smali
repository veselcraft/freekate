.class public final enum Lcom/yandex/mobile/ads/r;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yandex/mobile/ads/r;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/yandex/mobile/ads/r;

.field public static final enum b:Lcom/yandex/mobile/ads/r;

.field public static final enum c:Lcom/yandex/mobile/ads/r;

.field public static final enum d:Lcom/yandex/mobile/ads/r;

.field private static final synthetic f:[Lcom/yandex/mobile/ads/r;


# instance fields
.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 18
    new-instance v0, Lcom/yandex/mobile/ads/r;

    const-string v1, "BANNER"

    const-string v2, "banner"

    invoke-direct {v0, v1, v3, v2}, Lcom/yandex/mobile/ads/r;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yandex/mobile/ads/r;->a:Lcom/yandex/mobile/ads/r;

    .line 21
    new-instance v0, Lcom/yandex/mobile/ads/r;

    const-string v1, "INTERSTITIAL"

    const-string v2, "interstitial"

    invoke-direct {v0, v1, v4, v2}, Lcom/yandex/mobile/ads/r;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yandex/mobile/ads/r;->b:Lcom/yandex/mobile/ads/r;

    .line 24
    new-instance v0, Lcom/yandex/mobile/ads/r;

    const-string v1, "NATIVE"

    const-string v2, "native"

    invoke-direct {v0, v1, v5, v2}, Lcom/yandex/mobile/ads/r;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yandex/mobile/ads/r;->c:Lcom/yandex/mobile/ads/r;

    .line 27
    new-instance v0, Lcom/yandex/mobile/ads/r;

    const-string v1, "VASTVIDEO"

    const-string v2, "vastvideo"

    invoke-direct {v0, v1, v6, v2}, Lcom/yandex/mobile/ads/r;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yandex/mobile/ads/r;->d:Lcom/yandex/mobile/ads/r;

    .line 15
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/yandex/mobile/ads/r;

    sget-object v1, Lcom/yandex/mobile/ads/r;->a:Lcom/yandex/mobile/ads/r;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yandex/mobile/ads/r;->b:Lcom/yandex/mobile/ads/r;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yandex/mobile/ads/r;->c:Lcom/yandex/mobile/ads/r;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yandex/mobile/ads/r;->d:Lcom/yandex/mobile/ads/r;

    aput-object v1, v0, v6

    sput-object v0, Lcom/yandex/mobile/ads/r;->f:[Lcom/yandex/mobile/ads/r;

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
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 32
    iput-object p3, p0, Lcom/yandex/mobile/ads/r;->e:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/yandex/mobile/ads/r;
    .locals 5

    .prologue
    .line 40
    invoke-static {}, Lcom/yandex/mobile/ads/r;->values()[Lcom/yandex/mobile/ads/r;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 41
    iget-object v4, v0, Lcom/yandex/mobile/ads/r;->e:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 45
    :goto_1
    return-object v0

    .line 40
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 45
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yandex/mobile/ads/r;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 15
    const-class v0, Lcom/yandex/mobile/ads/r;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/r;

    return-object v0
.end method

.method public static values()[Lcom/yandex/mobile/ads/r;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/yandex/mobile/ads/r;->f:[Lcom/yandex/mobile/ads/r;

    invoke-virtual {v0}, [Lcom/yandex/mobile/ads/r;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yandex/mobile/ads/r;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/yandex/mobile/ads/r;->e:Ljava/lang/String;

    return-object v0
.end method
