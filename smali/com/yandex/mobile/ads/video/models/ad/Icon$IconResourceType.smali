.class public final enum Lcom/yandex/mobile/ads/video/models/ad/Icon$IconResourceType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/video/models/ad/Icon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IconResourceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yandex/mobile/ads/video/models/ad/Icon$IconResourceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yandex/mobile/ads/video/models/ad/Icon$IconResourceType;

.field public static final enum HTML_RESOURCE:Lcom/yandex/mobile/ads/video/models/ad/Icon$IconResourceType;

.field public static final enum IFRAME_RESOURCE:Lcom/yandex/mobile/ads/video/models/ad/Icon$IconResourceType;

.field public static final enum STATIC_RESOURCE:Lcom/yandex/mobile/ads/video/models/ad/Icon$IconResourceType;


# instance fields
.field public final resourceType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 41
    new-instance v0, Lcom/yandex/mobile/ads/video/models/ad/Icon$IconResourceType;

    const-string v1, "STATIC_RESOURCE"

    const-string v2, "StaticResource"

    invoke-direct {v0, v1, v3, v2}, Lcom/yandex/mobile/ads/video/models/ad/Icon$IconResourceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yandex/mobile/ads/video/models/ad/Icon$IconResourceType;->STATIC_RESOURCE:Lcom/yandex/mobile/ads/video/models/ad/Icon$IconResourceType;

    .line 42
    new-instance v0, Lcom/yandex/mobile/ads/video/models/ad/Icon$IconResourceType;

    const-string v1, "IFRAME_RESOURCE"

    const-string v2, "IFrameResource"

    invoke-direct {v0, v1, v4, v2}, Lcom/yandex/mobile/ads/video/models/ad/Icon$IconResourceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yandex/mobile/ads/video/models/ad/Icon$IconResourceType;->IFRAME_RESOURCE:Lcom/yandex/mobile/ads/video/models/ad/Icon$IconResourceType;

    .line 43
    new-instance v0, Lcom/yandex/mobile/ads/video/models/ad/Icon$IconResourceType;

    const-string v1, "HTML_RESOURCE"

    const-string v2, "HTMLResource"

    invoke-direct {v0, v1, v5, v2}, Lcom/yandex/mobile/ads/video/models/ad/Icon$IconResourceType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yandex/mobile/ads/video/models/ad/Icon$IconResourceType;->HTML_RESOURCE:Lcom/yandex/mobile/ads/video/models/ad/Icon$IconResourceType;

    .line 40
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/yandex/mobile/ads/video/models/ad/Icon$IconResourceType;

    sget-object v1, Lcom/yandex/mobile/ads/video/models/ad/Icon$IconResourceType;->STATIC_RESOURCE:Lcom/yandex/mobile/ads/video/models/ad/Icon$IconResourceType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yandex/mobile/ads/video/models/ad/Icon$IconResourceType;->IFRAME_RESOURCE:Lcom/yandex/mobile/ads/video/models/ad/Icon$IconResourceType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yandex/mobile/ads/video/models/ad/Icon$IconResourceType;->HTML_RESOURCE:Lcom/yandex/mobile/ads/video/models/ad/Icon$IconResourceType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/yandex/mobile/ads/video/models/ad/Icon$IconResourceType;->$VALUES:[Lcom/yandex/mobile/ads/video/models/ad/Icon$IconResourceType;

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
    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 48
    iput-object p3, p0, Lcom/yandex/mobile/ads/video/models/ad/Icon$IconResourceType;->resourceType:Ljava/lang/String;

    .line 49
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Lcom/yandex/mobile/ads/video/models/ad/Icon$IconResourceType;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-static {p0}, Lcom/yandex/mobile/ads/video/models/ad/Icon$IconResourceType;->getConvertType(Ljava/lang/String;)Lcom/yandex/mobile/ads/video/models/ad/Icon$IconResourceType;

    move-result-object v0

    return-object v0
.end method

.method public static contains(Ljava/lang/String;)Z
    .locals 2
    .param p0, "resourceType"    # Ljava/lang/String;

    .prologue
    .line 61
    invoke-static {}, Lcom/yandex/mobile/ads/video/models/ad/Icon$IconResourceType;->values()[Lcom/yandex/mobile/ads/video/models/ad/Icon$IconResourceType;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/video/models/ad/Icon$IconResourceType;

    .line 62
    iget-object v0, v0, Lcom/yandex/mobile/ads/video/models/ad/Icon$IconResourceType;->resourceType:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    const/4 v0, 0x1

    .line 66
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getConvertType(Ljava/lang/String;)Lcom/yandex/mobile/ads/video/models/ad/Icon$IconResourceType;
    .locals 3
    .param p0, "resourceType"    # Ljava/lang/String;

    .prologue
    .line 52
    invoke-static {}, Lcom/yandex/mobile/ads/video/models/ad/Icon$IconResourceType;->values()[Lcom/yandex/mobile/ads/video/models/ad/Icon$IconResourceType;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/video/models/ad/Icon$IconResourceType;

    .line 53
    iget-object v2, v0, Lcom/yandex/mobile/ads/video/models/ad/Icon$IconResourceType;->resourceType:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 57
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yandex/mobile/ads/video/models/ad/Icon$IconResourceType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 40
    const-class v0, Lcom/yandex/mobile/ads/video/models/ad/Icon$IconResourceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/video/models/ad/Icon$IconResourceType;

    return-object v0
.end method

.method public static values()[Lcom/yandex/mobile/ads/video/models/ad/Icon$IconResourceType;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/yandex/mobile/ads/video/models/ad/Icon$IconResourceType;->$VALUES:[Lcom/yandex/mobile/ads/video/models/ad/Icon$IconResourceType;

    invoke-virtual {v0}, [Lcom/yandex/mobile/ads/video/models/ad/Icon$IconResourceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yandex/mobile/ads/video/models/ad/Icon$IconResourceType;

    return-object v0
.end method
