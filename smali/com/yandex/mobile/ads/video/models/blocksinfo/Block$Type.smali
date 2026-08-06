.class public final enum Lcom/yandex/mobile/ads/video/models/blocksinfo/Block$Type;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/video/models/blocksinfo/Block;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yandex/mobile/ads/video/models/blocksinfo/Block$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yandex/mobile/ads/video/models/blocksinfo/Block$Type;

.field public static final enum MIDROLL:Lcom/yandex/mobile/ads/video/models/blocksinfo/Block$Type;

.field public static final enum OVERLAYROLL:Lcom/yandex/mobile/ads/video/models/blocksinfo/Block$Type;

.field public static final enum PAUSEROLL:Lcom/yandex/mobile/ads/video/models/blocksinfo/Block$Type;

.field public static final enum POSTROLL:Lcom/yandex/mobile/ads/video/models/blocksinfo/Block$Type;

.field public static final enum PREROLL:Lcom/yandex/mobile/ads/video/models/blocksinfo/Block$Type;


# instance fields
.field private final mType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 31
    new-instance v0, Lcom/yandex/mobile/ads/video/models/blocksinfo/Block$Type;

    const-string v1, "PREROLL"

    const-string v2, "preroll"

    invoke-direct {v0, v1, v3, v2}, Lcom/yandex/mobile/ads/video/models/blocksinfo/Block$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yandex/mobile/ads/video/models/blocksinfo/Block$Type;->PREROLL:Lcom/yandex/mobile/ads/video/models/blocksinfo/Block$Type;

    new-instance v0, Lcom/yandex/mobile/ads/video/models/blocksinfo/Block$Type;

    const-string v1, "MIDROLL"

    const-string v2, "midroll"

    invoke-direct {v0, v1, v4, v2}, Lcom/yandex/mobile/ads/video/models/blocksinfo/Block$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yandex/mobile/ads/video/models/blocksinfo/Block$Type;->MIDROLL:Lcom/yandex/mobile/ads/video/models/blocksinfo/Block$Type;

    new-instance v0, Lcom/yandex/mobile/ads/video/models/blocksinfo/Block$Type;

    const-string v1, "POSTROLL"

    const-string v2, "postroll"

    invoke-direct {v0, v1, v5, v2}, Lcom/yandex/mobile/ads/video/models/blocksinfo/Block$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yandex/mobile/ads/video/models/blocksinfo/Block$Type;->POSTROLL:Lcom/yandex/mobile/ads/video/models/blocksinfo/Block$Type;

    new-instance v0, Lcom/yandex/mobile/ads/video/models/blocksinfo/Block$Type;

    const-string v1, "PAUSEROLL"

    const-string v2, "pauseroll"

    invoke-direct {v0, v1, v6, v2}, Lcom/yandex/mobile/ads/video/models/blocksinfo/Block$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yandex/mobile/ads/video/models/blocksinfo/Block$Type;->PAUSEROLL:Lcom/yandex/mobile/ads/video/models/blocksinfo/Block$Type;

    new-instance v0, Lcom/yandex/mobile/ads/video/models/blocksinfo/Block$Type;

    const-string v1, "OVERLAYROLL"

    const-string v2, "overlayroll"

    invoke-direct {v0, v1, v7, v2}, Lcom/yandex/mobile/ads/video/models/blocksinfo/Block$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yandex/mobile/ads/video/models/blocksinfo/Block$Type;->OVERLAYROLL:Lcom/yandex/mobile/ads/video/models/blocksinfo/Block$Type;

    .line 29
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/yandex/mobile/ads/video/models/blocksinfo/Block$Type;

    sget-object v1, Lcom/yandex/mobile/ads/video/models/blocksinfo/Block$Type;->PREROLL:Lcom/yandex/mobile/ads/video/models/blocksinfo/Block$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yandex/mobile/ads/video/models/blocksinfo/Block$Type;->MIDROLL:Lcom/yandex/mobile/ads/video/models/blocksinfo/Block$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yandex/mobile/ads/video/models/blocksinfo/Block$Type;->POSTROLL:Lcom/yandex/mobile/ads/video/models/blocksinfo/Block$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yandex/mobile/ads/video/models/blocksinfo/Block$Type;->PAUSEROLL:Lcom/yandex/mobile/ads/video/models/blocksinfo/Block$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/yandex/mobile/ads/video/models/blocksinfo/Block$Type;->OVERLAYROLL:Lcom/yandex/mobile/ads/video/models/blocksinfo/Block$Type;

    aput-object v1, v0, v7

    sput-object v0, Lcom/yandex/mobile/ads/video/models/blocksinfo/Block$Type;->$VALUES:[Lcom/yandex/mobile/ads/video/models/blocksinfo/Block$Type;

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
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    iput-object p3, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/Block$Type;->mType:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public static getByType(Ljava/lang/String;)Lcom/yandex/mobile/ads/video/models/blocksinfo/Block$Type;
    .locals 5
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-static {}, Lcom/yandex/mobile/ads/video/models/blocksinfo/Block$Type;->values()[Lcom/yandex/mobile/ads/video/models/blocksinfo/Block$Type;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 46
    iget-object v4, v0, Lcom/yandex/mobile/ads/video/models/blocksinfo/Block$Type;->mType:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 51
    :goto_1
    return-object v0

    .line 45
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 51
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yandex/mobile/ads/video/models/blocksinfo/Block$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 29
    const-class v0, Lcom/yandex/mobile/ads/video/models/blocksinfo/Block$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/video/models/blocksinfo/Block$Type;

    return-object v0
.end method

.method public static values()[Lcom/yandex/mobile/ads/video/models/blocksinfo/Block$Type;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/yandex/mobile/ads/video/models/blocksinfo/Block$Type;->$VALUES:[Lcom/yandex/mobile/ads/video/models/blocksinfo/Block$Type;

    invoke-virtual {v0}, [Lcom/yandex/mobile/ads/video/models/blocksinfo/Block$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yandex/mobile/ads/video/models/blocksinfo/Block$Type;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/yandex/mobile/ads/video/models/blocksinfo/Block$Type;->mType:Ljava/lang/String;

    return-object v0
.end method
