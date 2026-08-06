.class public final enum Lcom/yandex/mobile/ads/video/models/ad/Icon$IconVerticalPosition;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/video/models/ad/Icon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IconVerticalPosition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yandex/mobile/ads/video/models/ad/Icon$IconVerticalPosition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yandex/mobile/ads/video/models/ad/Icon$IconVerticalPosition;

.field public static final enum ICON_VERTICAL_POSITION_BOTTOM:Lcom/yandex/mobile/ads/video/models/ad/Icon$IconVerticalPosition;

.field public static final enum ICON_VERTICAL_POSITION_TOP:Lcom/yandex/mobile/ads/video/models/ad/Icon$IconVerticalPosition;

.field public static final enum ICON_VERTICAL_POSITION_TOP_OFFSET:Lcom/yandex/mobile/ads/video/models/ad/Icon$IconVerticalPosition;


# instance fields
.field public final verticalPosition:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 93
    new-instance v0, Lcom/yandex/mobile/ads/video/models/ad/Icon$IconVerticalPosition;

    const-string v1, "ICON_VERTICAL_POSITION_TOP"

    const-string v2, "top"

    invoke-direct {v0, v1, v3, v2}, Lcom/yandex/mobile/ads/video/models/ad/Icon$IconVerticalPosition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yandex/mobile/ads/video/models/ad/Icon$IconVerticalPosition;->ICON_VERTICAL_POSITION_TOP:Lcom/yandex/mobile/ads/video/models/ad/Icon$IconVerticalPosition;

    .line 94
    new-instance v0, Lcom/yandex/mobile/ads/video/models/ad/Icon$IconVerticalPosition;

    const-string v1, "ICON_VERTICAL_POSITION_BOTTOM"

    const-string v2, "bottom"

    invoke-direct {v0, v1, v4, v2}, Lcom/yandex/mobile/ads/video/models/ad/Icon$IconVerticalPosition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yandex/mobile/ads/video/models/ad/Icon$IconVerticalPosition;->ICON_VERTICAL_POSITION_BOTTOM:Lcom/yandex/mobile/ads/video/models/ad/Icon$IconVerticalPosition;

    .line 95
    new-instance v0, Lcom/yandex/mobile/ads/video/models/ad/Icon$IconVerticalPosition;

    const-string v1, "ICON_VERTICAL_POSITION_TOP_OFFSET"

    const-string v2, "topOffset"

    invoke-direct {v0, v1, v5, v2}, Lcom/yandex/mobile/ads/video/models/ad/Icon$IconVerticalPosition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yandex/mobile/ads/video/models/ad/Icon$IconVerticalPosition;->ICON_VERTICAL_POSITION_TOP_OFFSET:Lcom/yandex/mobile/ads/video/models/ad/Icon$IconVerticalPosition;

    .line 92
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/yandex/mobile/ads/video/models/ad/Icon$IconVerticalPosition;

    sget-object v1, Lcom/yandex/mobile/ads/video/models/ad/Icon$IconVerticalPosition;->ICON_VERTICAL_POSITION_TOP:Lcom/yandex/mobile/ads/video/models/ad/Icon$IconVerticalPosition;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yandex/mobile/ads/video/models/ad/Icon$IconVerticalPosition;->ICON_VERTICAL_POSITION_BOTTOM:Lcom/yandex/mobile/ads/video/models/ad/Icon$IconVerticalPosition;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yandex/mobile/ads/video/models/ad/Icon$IconVerticalPosition;->ICON_VERTICAL_POSITION_TOP_OFFSET:Lcom/yandex/mobile/ads/video/models/ad/Icon$IconVerticalPosition;

    aput-object v1, v0, v5

    sput-object v0, Lcom/yandex/mobile/ads/video/models/ad/Icon$IconVerticalPosition;->$VALUES:[Lcom/yandex/mobile/ads/video/models/ad/Icon$IconVerticalPosition;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "position"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 100
    iput-object p3, p0, Lcom/yandex/mobile/ads/video/models/ad/Icon$IconVerticalPosition;->verticalPosition:Ljava/lang/String;

    .line 101
    return-void
.end method

.method static synthetic access$200(Ljava/lang/String;)Lcom/yandex/mobile/ads/video/models/ad/Icon$IconVerticalPosition;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 92
    invoke-static {p0}, Lcom/yandex/mobile/ads/video/models/ad/Icon$IconVerticalPosition;->getPosition(Ljava/lang/String;)Lcom/yandex/mobile/ads/video/models/ad/Icon$IconVerticalPosition;

    move-result-object v0

    return-object v0
.end method

.method private static getPosition(Ljava/lang/String;)Lcom/yandex/mobile/ads/video/models/ad/Icon$IconVerticalPosition;
    .locals 1
    .param p0, "position"    # Ljava/lang/String;

    .prologue
    .line 104
    const-string v0, "top"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    sget-object v0, Lcom/yandex/mobile/ads/video/models/ad/Icon$IconVerticalPosition;->ICON_VERTICAL_POSITION_TOP:Lcom/yandex/mobile/ads/video/models/ad/Icon$IconVerticalPosition;

    .line 109
    :goto_0
    return-object v0

    .line 106
    :cond_0
    const-string v0, "bottom"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    sget-object v0, Lcom/yandex/mobile/ads/video/models/ad/Icon$IconVerticalPosition;->ICON_VERTICAL_POSITION_BOTTOM:Lcom/yandex/mobile/ads/video/models/ad/Icon$IconVerticalPosition;

    goto :goto_0

    .line 109
    :cond_1
    sget-object v0, Lcom/yandex/mobile/ads/video/models/ad/Icon$IconVerticalPosition;->ICON_VERTICAL_POSITION_TOP_OFFSET:Lcom/yandex/mobile/ads/video/models/ad/Icon$IconVerticalPosition;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yandex/mobile/ads/video/models/ad/Icon$IconVerticalPosition;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 92
    const-class v0, Lcom/yandex/mobile/ads/video/models/ad/Icon$IconVerticalPosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/video/models/ad/Icon$IconVerticalPosition;

    return-object v0
.end method

.method public static values()[Lcom/yandex/mobile/ads/video/models/ad/Icon$IconVerticalPosition;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/yandex/mobile/ads/video/models/ad/Icon$IconVerticalPosition;->$VALUES:[Lcom/yandex/mobile/ads/video/models/ad/Icon$IconVerticalPosition;

    invoke-virtual {v0}, [Lcom/yandex/mobile/ads/video/models/ad/Icon$IconVerticalPosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yandex/mobile/ads/video/models/ad/Icon$IconVerticalPosition;

    return-object v0
.end method
