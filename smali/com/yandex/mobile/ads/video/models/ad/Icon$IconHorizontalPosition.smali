.class public final enum Lcom/yandex/mobile/ads/video/models/ad/Icon$IconHorizontalPosition;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yandex/mobile/ads/video/models/ad/Icon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IconHorizontalPosition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yandex/mobile/ads/video/models/ad/Icon$IconHorizontalPosition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yandex/mobile/ads/video/models/ad/Icon$IconHorizontalPosition;

.field public static final enum ICON_HORIZONTAL_POSITION_LEFT:Lcom/yandex/mobile/ads/video/models/ad/Icon$IconHorizontalPosition;

.field public static final enum ICON_HORIZONTAL_POSITION_LEFT_OFFSET:Lcom/yandex/mobile/ads/video/models/ad/Icon$IconHorizontalPosition;

.field public static final enum ICON_HORIZONTAL_POSITION_RIGHT:Lcom/yandex/mobile/ads/video/models/ad/Icon$IconHorizontalPosition;


# instance fields
.field public final horizontalPosition:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 71
    new-instance v0, Lcom/yandex/mobile/ads/video/models/ad/Icon$IconHorizontalPosition;

    const-string v1, "ICON_HORIZONTAL_POSITION_LEFT"

    const-string v2, "left"

    invoke-direct {v0, v1, v3, v2}, Lcom/yandex/mobile/ads/video/models/ad/Icon$IconHorizontalPosition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yandex/mobile/ads/video/models/ad/Icon$IconHorizontalPosition;->ICON_HORIZONTAL_POSITION_LEFT:Lcom/yandex/mobile/ads/video/models/ad/Icon$IconHorizontalPosition;

    .line 72
    new-instance v0, Lcom/yandex/mobile/ads/video/models/ad/Icon$IconHorizontalPosition;

    const-string v1, "ICON_HORIZONTAL_POSITION_RIGHT"

    const-string v2, "right"

    invoke-direct {v0, v1, v4, v2}, Lcom/yandex/mobile/ads/video/models/ad/Icon$IconHorizontalPosition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yandex/mobile/ads/video/models/ad/Icon$IconHorizontalPosition;->ICON_HORIZONTAL_POSITION_RIGHT:Lcom/yandex/mobile/ads/video/models/ad/Icon$IconHorizontalPosition;

    .line 73
    new-instance v0, Lcom/yandex/mobile/ads/video/models/ad/Icon$IconHorizontalPosition;

    const-string v1, "ICON_HORIZONTAL_POSITION_LEFT_OFFSET"

    const-string v2, "leftOffset"

    invoke-direct {v0, v1, v5, v2}, Lcom/yandex/mobile/ads/video/models/ad/Icon$IconHorizontalPosition;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/yandex/mobile/ads/video/models/ad/Icon$IconHorizontalPosition;->ICON_HORIZONTAL_POSITION_LEFT_OFFSET:Lcom/yandex/mobile/ads/video/models/ad/Icon$IconHorizontalPosition;

    .line 70
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/yandex/mobile/ads/video/models/ad/Icon$IconHorizontalPosition;

    sget-object v1, Lcom/yandex/mobile/ads/video/models/ad/Icon$IconHorizontalPosition;->ICON_HORIZONTAL_POSITION_LEFT:Lcom/yandex/mobile/ads/video/models/ad/Icon$IconHorizontalPosition;

    aput-object v1, v0, v3

    sget-object v1, Lcom/yandex/mobile/ads/video/models/ad/Icon$IconHorizontalPosition;->ICON_HORIZONTAL_POSITION_RIGHT:Lcom/yandex/mobile/ads/video/models/ad/Icon$IconHorizontalPosition;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yandex/mobile/ads/video/models/ad/Icon$IconHorizontalPosition;->ICON_HORIZONTAL_POSITION_LEFT_OFFSET:Lcom/yandex/mobile/ads/video/models/ad/Icon$IconHorizontalPosition;

    aput-object v1, v0, v5

    sput-object v0, Lcom/yandex/mobile/ads/video/models/ad/Icon$IconHorizontalPosition;->$VALUES:[Lcom/yandex/mobile/ads/video/models/ad/Icon$IconHorizontalPosition;

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
    .line 77
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 78
    iput-object p3, p0, Lcom/yandex/mobile/ads/video/models/ad/Icon$IconHorizontalPosition;->horizontalPosition:Ljava/lang/String;

    .line 79
    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;)Lcom/yandex/mobile/ads/video/models/ad/Icon$IconHorizontalPosition;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 70
    invoke-static {p0}, Lcom/yandex/mobile/ads/video/models/ad/Icon$IconHorizontalPosition;->getPosition(Ljava/lang/String;)Lcom/yandex/mobile/ads/video/models/ad/Icon$IconHorizontalPosition;

    move-result-object v0

    return-object v0
.end method

.method private static getPosition(Ljava/lang/String;)Lcom/yandex/mobile/ads/video/models/ad/Icon$IconHorizontalPosition;
    .locals 1
    .param p0, "position"    # Ljava/lang/String;

    .prologue
    .line 82
    const-string v0, "left"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    sget-object v0, Lcom/yandex/mobile/ads/video/models/ad/Icon$IconHorizontalPosition;->ICON_HORIZONTAL_POSITION_LEFT:Lcom/yandex/mobile/ads/video/models/ad/Icon$IconHorizontalPosition;

    .line 87
    :goto_0
    return-object v0

    .line 84
    :cond_0
    const-string v0, "right"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    sget-object v0, Lcom/yandex/mobile/ads/video/models/ad/Icon$IconHorizontalPosition;->ICON_HORIZONTAL_POSITION_RIGHT:Lcom/yandex/mobile/ads/video/models/ad/Icon$IconHorizontalPosition;

    goto :goto_0

    .line 87
    :cond_1
    sget-object v0, Lcom/yandex/mobile/ads/video/models/ad/Icon$IconHorizontalPosition;->ICON_HORIZONTAL_POSITION_LEFT_OFFSET:Lcom/yandex/mobile/ads/video/models/ad/Icon$IconHorizontalPosition;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yandex/mobile/ads/video/models/ad/Icon$IconHorizontalPosition;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 70
    const-class v0, Lcom/yandex/mobile/ads/video/models/ad/Icon$IconHorizontalPosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yandex/mobile/ads/video/models/ad/Icon$IconHorizontalPosition;

    return-object v0
.end method

.method public static values()[Lcom/yandex/mobile/ads/video/models/ad/Icon$IconHorizontalPosition;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/yandex/mobile/ads/video/models/ad/Icon$IconHorizontalPosition;->$VALUES:[Lcom/yandex/mobile/ads/video/models/ad/Icon$IconHorizontalPosition;

    invoke-virtual {v0}, [Lcom/yandex/mobile/ads/video/models/ad/Icon$IconHorizontalPosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yandex/mobile/ads/video/models/ad/Icon$IconHorizontalPosition;

    return-object v0
.end method
