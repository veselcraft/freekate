.class final enum Lcom/inmobi/ads/ai$a;
.super Ljava/lang/Enum;
.source "NativeStrandTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/ai;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/inmobi/ads/ai$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/inmobi/ads/ai$a;

.field public static final enum b:Lcom/inmobi/ads/ai$a;

.field public static final enum c:Lcom/inmobi/ads/ai$a;

.field public static final enum d:Lcom/inmobi/ads/ai$a;

.field public static final enum e:Lcom/inmobi/ads/ai$a;

.field public static final enum f:Lcom/inmobi/ads/ai$a;

.field private static final synthetic g:[Lcom/inmobi/ads/ai$a;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 15
    new-instance v0, Lcom/inmobi/ads/ai$a;

    const-string v1, "TRACKER_EVENT_TYPE_UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/inmobi/ads/ai$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/ads/ai$a;->a:Lcom/inmobi/ads/ai$a;

    .line 16
    new-instance v0, Lcom/inmobi/ads/ai$a;

    const-string v1, "TRACKER_EVENT_TYPE_LOAD"

    invoke-direct {v0, v1, v4}, Lcom/inmobi/ads/ai$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/ads/ai$a;->b:Lcom/inmobi/ads/ai$a;

    .line 17
    new-instance v0, Lcom/inmobi/ads/ai$a;

    const-string v1, "TRACKER_EVENT_TYPE_CLIENT_FILL"

    invoke-direct {v0, v1, v5}, Lcom/inmobi/ads/ai$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/ads/ai$a;->c:Lcom/inmobi/ads/ai$a;

    .line 18
    new-instance v0, Lcom/inmobi/ads/ai$a;

    const-string v1, "TRACKER_EVENT_TYPE_RENDER"

    invoke-direct {v0, v1, v6}, Lcom/inmobi/ads/ai$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/ads/ai$a;->d:Lcom/inmobi/ads/ai$a;

    .line 19
    new-instance v0, Lcom/inmobi/ads/ai$a;

    const-string v1, "TRACKER_EVENT_TYPE_PAGE_VIEW"

    invoke-direct {v0, v1, v7}, Lcom/inmobi/ads/ai$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/ads/ai$a;->e:Lcom/inmobi/ads/ai$a;

    .line 20
    new-instance v0, Lcom/inmobi/ads/ai$a;

    const-string v1, "TRACKER_EVENT_TYPE_CLICK"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/inmobi/ads/ai$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/ads/ai$a;->f:Lcom/inmobi/ads/ai$a;

    .line 14
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/inmobi/ads/ai$a;

    sget-object v1, Lcom/inmobi/ads/ai$a;->a:Lcom/inmobi/ads/ai$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/inmobi/ads/ai$a;->b:Lcom/inmobi/ads/ai$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/inmobi/ads/ai$a;->c:Lcom/inmobi/ads/ai$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/inmobi/ads/ai$a;->d:Lcom/inmobi/ads/ai$a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/inmobi/ads/ai$a;->e:Lcom/inmobi/ads/ai$a;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/inmobi/ads/ai$a;->f:Lcom/inmobi/ads/ai$a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/inmobi/ads/ai$a;->g:[Lcom/inmobi/ads/ai$a;

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
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/inmobi/ads/ai$a;
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/inmobi/ads/ai$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/ai$a;

    return-object v0
.end method

.method public static values()[Lcom/inmobi/ads/ai$a;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/inmobi/ads/ai$a;->g:[Lcom/inmobi/ads/ai$a;

    invoke-virtual {v0}, [Lcom/inmobi/ads/ai$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/inmobi/ads/ai$a;

    return-object v0
.end method
