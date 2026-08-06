.class public final enum Lcom/inmobi/ads/AdUnit$AdState;
.super Ljava/lang/Enum;
.source "AdUnit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/AdUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AdState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/inmobi/ads/AdUnit$AdState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/inmobi/ads/AdUnit$AdState;

.field public static final enum STATE_ACTIVE:Lcom/inmobi/ads/AdUnit$AdState;

.field public static final enum STATE_ATTACHED:Lcom/inmobi/ads/AdUnit$AdState;

.field public static final enum STATE_AVAILABLE:Lcom/inmobi/ads/AdUnit$AdState;

.field public static final enum STATE_CREATED:Lcom/inmobi/ads/AdUnit$AdState;

.field public static final enum STATE_FAILED:Lcom/inmobi/ads/AdUnit$AdState;

.field public static final enum STATE_LOADED:Lcom/inmobi/ads/AdUnit$AdState;

.field public static final enum STATE_LOADING:Lcom/inmobi/ads/AdUnit$AdState;

.field public static final enum STATE_READY:Lcom/inmobi/ads/AdUnit$AdState;

.field public static final enum STATE_RENDERED:Lcom/inmobi/ads/AdUnit$AdState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 50
    new-instance v0, Lcom/inmobi/ads/AdUnit$AdState;

    const-string v1, "STATE_CREATED"

    invoke-direct {v0, v1, v3}, Lcom/inmobi/ads/AdUnit$AdState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_CREATED:Lcom/inmobi/ads/AdUnit$AdState;

    .line 51
    new-instance v0, Lcom/inmobi/ads/AdUnit$AdState;

    const-string v1, "STATE_LOADING"

    invoke-direct {v0, v1, v4}, Lcom/inmobi/ads/AdUnit$AdState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_LOADING:Lcom/inmobi/ads/AdUnit$AdState;

    .line 52
    new-instance v0, Lcom/inmobi/ads/AdUnit$AdState;

    const-string v1, "STATE_AVAILABLE"

    invoke-direct {v0, v1, v5}, Lcom/inmobi/ads/AdUnit$AdState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_AVAILABLE:Lcom/inmobi/ads/AdUnit$AdState;

    .line 53
    new-instance v0, Lcom/inmobi/ads/AdUnit$AdState;

    const-string v1, "STATE_FAILED"

    invoke-direct {v0, v1, v6}, Lcom/inmobi/ads/AdUnit$AdState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_FAILED:Lcom/inmobi/ads/AdUnit$AdState;

    .line 54
    new-instance v0, Lcom/inmobi/ads/AdUnit$AdState;

    const-string v1, "STATE_LOADED"

    invoke-direct {v0, v1, v7}, Lcom/inmobi/ads/AdUnit$AdState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_LOADED:Lcom/inmobi/ads/AdUnit$AdState;

    .line 55
    new-instance v0, Lcom/inmobi/ads/AdUnit$AdState;

    const-string v1, "STATE_READY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/inmobi/ads/AdUnit$AdState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_READY:Lcom/inmobi/ads/AdUnit$AdState;

    .line 56
    new-instance v0, Lcom/inmobi/ads/AdUnit$AdState;

    const-string v1, "STATE_ATTACHED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/inmobi/ads/AdUnit$AdState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_ATTACHED:Lcom/inmobi/ads/AdUnit$AdState;

    .line 57
    new-instance v0, Lcom/inmobi/ads/AdUnit$AdState;

    const-string v1, "STATE_RENDERED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/inmobi/ads/AdUnit$AdState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_RENDERED:Lcom/inmobi/ads/AdUnit$AdState;

    .line 58
    new-instance v0, Lcom/inmobi/ads/AdUnit$AdState;

    const-string v1, "STATE_ACTIVE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/inmobi/ads/AdUnit$AdState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_ACTIVE:Lcom/inmobi/ads/AdUnit$AdState;

    .line 49
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/inmobi/ads/AdUnit$AdState;

    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_CREATED:Lcom/inmobi/ads/AdUnit$AdState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_LOADING:Lcom/inmobi/ads/AdUnit$AdState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_AVAILABLE:Lcom/inmobi/ads/AdUnit$AdState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_FAILED:Lcom/inmobi/ads/AdUnit$AdState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_LOADED:Lcom/inmobi/ads/AdUnit$AdState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/inmobi/ads/AdUnit$AdState;->STATE_READY:Lcom/inmobi/ads/AdUnit$AdState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/inmobi/ads/AdUnit$AdState;->STATE_ATTACHED:Lcom/inmobi/ads/AdUnit$AdState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/inmobi/ads/AdUnit$AdState;->STATE_RENDERED:Lcom/inmobi/ads/AdUnit$AdState;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/inmobi/ads/AdUnit$AdState;->STATE_ACTIVE:Lcom/inmobi/ads/AdUnit$AdState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/inmobi/ads/AdUnit$AdState;->$VALUES:[Lcom/inmobi/ads/AdUnit$AdState;

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
    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/inmobi/ads/AdUnit$AdState;
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/inmobi/ads/AdUnit$AdState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/AdUnit$AdState;

    return-object v0
.end method

.method public static values()[Lcom/inmobi/ads/AdUnit$AdState;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->$VALUES:[Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {v0}, [Lcom/inmobi/ads/AdUnit$AdState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/inmobi/ads/AdUnit$AdState;

    return-object v0
.end method
