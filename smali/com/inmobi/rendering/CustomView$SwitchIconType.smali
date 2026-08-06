.class public final enum Lcom/inmobi/rendering/CustomView$SwitchIconType;
.super Ljava/lang/Enum;
.source "CustomView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/rendering/CustomView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SwitchIconType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/inmobi/rendering/CustomView$SwitchIconType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/inmobi/rendering/CustomView$SwitchIconType;

.field public static final enum BACK:Lcom/inmobi/rendering/CustomView$SwitchIconType;

.field public static final enum CLOSE_BUTTON:Lcom/inmobi/rendering/CustomView$SwitchIconType;

.field public static final enum CLOSE_ICON:Lcom/inmobi/rendering/CustomView$SwitchIconType;

.field public static final enum CLOSE_TRANSPARENT:Lcom/inmobi/rendering/CustomView$SwitchIconType;

.field public static final enum FORWARD_ACTIVE:Lcom/inmobi/rendering/CustomView$SwitchIconType;

.field public static final enum FORWARD_INACTIVE:Lcom/inmobi/rendering/CustomView$SwitchIconType;

.field public static final enum REFRESH:Lcom/inmobi/rendering/CustomView$SwitchIconType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 29
    new-instance v0, Lcom/inmobi/rendering/CustomView$SwitchIconType;

    const-string v1, "CLOSE_BUTTON"

    invoke-direct {v0, v1, v3}, Lcom/inmobi/rendering/CustomView$SwitchIconType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/rendering/CustomView$SwitchIconType;->CLOSE_BUTTON:Lcom/inmobi/rendering/CustomView$SwitchIconType;

    .line 30
    new-instance v0, Lcom/inmobi/rendering/CustomView$SwitchIconType;

    const-string v1, "CLOSE_TRANSPARENT"

    invoke-direct {v0, v1, v4}, Lcom/inmobi/rendering/CustomView$SwitchIconType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/rendering/CustomView$SwitchIconType;->CLOSE_TRANSPARENT:Lcom/inmobi/rendering/CustomView$SwitchIconType;

    .line 31
    new-instance v0, Lcom/inmobi/rendering/CustomView$SwitchIconType;

    const-string v1, "CLOSE_ICON"

    invoke-direct {v0, v1, v5}, Lcom/inmobi/rendering/CustomView$SwitchIconType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/rendering/CustomView$SwitchIconType;->CLOSE_ICON:Lcom/inmobi/rendering/CustomView$SwitchIconType;

    .line 32
    new-instance v0, Lcom/inmobi/rendering/CustomView$SwitchIconType;

    const-string v1, "REFRESH"

    invoke-direct {v0, v1, v6}, Lcom/inmobi/rendering/CustomView$SwitchIconType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/rendering/CustomView$SwitchIconType;->REFRESH:Lcom/inmobi/rendering/CustomView$SwitchIconType;

    .line 33
    new-instance v0, Lcom/inmobi/rendering/CustomView$SwitchIconType;

    const-string v1, "BACK"

    invoke-direct {v0, v1, v7}, Lcom/inmobi/rendering/CustomView$SwitchIconType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/rendering/CustomView$SwitchIconType;->BACK:Lcom/inmobi/rendering/CustomView$SwitchIconType;

    .line 34
    new-instance v0, Lcom/inmobi/rendering/CustomView$SwitchIconType;

    const-string v1, "FORWARD_ACTIVE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/inmobi/rendering/CustomView$SwitchIconType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/rendering/CustomView$SwitchIconType;->FORWARD_ACTIVE:Lcom/inmobi/rendering/CustomView$SwitchIconType;

    .line 35
    new-instance v0, Lcom/inmobi/rendering/CustomView$SwitchIconType;

    const-string v1, "FORWARD_INACTIVE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/inmobi/rendering/CustomView$SwitchIconType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/rendering/CustomView$SwitchIconType;->FORWARD_INACTIVE:Lcom/inmobi/rendering/CustomView$SwitchIconType;

    .line 28
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/inmobi/rendering/CustomView$SwitchIconType;

    sget-object v1, Lcom/inmobi/rendering/CustomView$SwitchIconType;->CLOSE_BUTTON:Lcom/inmobi/rendering/CustomView$SwitchIconType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/inmobi/rendering/CustomView$SwitchIconType;->CLOSE_TRANSPARENT:Lcom/inmobi/rendering/CustomView$SwitchIconType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/inmobi/rendering/CustomView$SwitchIconType;->CLOSE_ICON:Lcom/inmobi/rendering/CustomView$SwitchIconType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/inmobi/rendering/CustomView$SwitchIconType;->REFRESH:Lcom/inmobi/rendering/CustomView$SwitchIconType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/inmobi/rendering/CustomView$SwitchIconType;->BACK:Lcom/inmobi/rendering/CustomView$SwitchIconType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/inmobi/rendering/CustomView$SwitchIconType;->FORWARD_ACTIVE:Lcom/inmobi/rendering/CustomView$SwitchIconType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/inmobi/rendering/CustomView$SwitchIconType;->FORWARD_INACTIVE:Lcom/inmobi/rendering/CustomView$SwitchIconType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/inmobi/rendering/CustomView$SwitchIconType;->$VALUES:[Lcom/inmobi/rendering/CustomView$SwitchIconType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/inmobi/rendering/CustomView$SwitchIconType;
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/inmobi/rendering/CustomView$SwitchIconType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/inmobi/rendering/CustomView$SwitchIconType;

    return-object v0
.end method

.method public static values()[Lcom/inmobi/rendering/CustomView$SwitchIconType;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/inmobi/rendering/CustomView$SwitchIconType;->$VALUES:[Lcom/inmobi/rendering/CustomView$SwitchIconType;

    invoke-virtual {v0}, [Lcom/inmobi/rendering/CustomView$SwitchIconType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/inmobi/rendering/CustomView$SwitchIconType;

    return-object v0
.end method
