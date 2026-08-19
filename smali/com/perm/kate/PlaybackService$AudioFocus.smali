.class final enum Lcom/perm/kate/PlaybackService$AudioFocus;
.super Ljava/lang/Enum;
.source "PlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/PlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "AudioFocus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/perm/kate/PlaybackService$AudioFocus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/perm/kate/PlaybackService$AudioFocus;

.field public static final enum Focused:Lcom/perm/kate/PlaybackService$AudioFocus;

.field public static final enum NoFocusCanDuck:Lcom/perm/kate/PlaybackService$AudioFocus;

.field public static final enum NoFocusNoDuck:Lcom/perm/kate/PlaybackService$AudioFocus;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 68
    new-instance v0, Lcom/perm/kate/PlaybackService$AudioFocus;

    const-string v1, "NoFocusNoDuck"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/perm/kate/PlaybackService$AudioFocus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/perm/kate/PlaybackService$AudioFocus;->NoFocusNoDuck:Lcom/perm/kate/PlaybackService$AudioFocus;

    .line 69
    new-instance v1, Lcom/perm/kate/PlaybackService$AudioFocus;

    const-string v3, "NoFocusCanDuck"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/perm/kate/PlaybackService$AudioFocus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/perm/kate/PlaybackService$AudioFocus;->NoFocusCanDuck:Lcom/perm/kate/PlaybackService$AudioFocus;

    .line 70
    new-instance v3, Lcom/perm/kate/PlaybackService$AudioFocus;

    const-string v5, "Focused"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/perm/kate/PlaybackService$AudioFocus;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/perm/kate/PlaybackService$AudioFocus;->Focused:Lcom/perm/kate/PlaybackService$AudioFocus;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/perm/kate/PlaybackService$AudioFocus;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 67
    sput-object v5, Lcom/perm/kate/PlaybackService$AudioFocus;->$VALUES:[Lcom/perm/kate/PlaybackService$AudioFocus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/perm/kate/PlaybackService$AudioFocus;
    .locals 1

    .line 67
    const-class v0, Lcom/perm/kate/PlaybackService$AudioFocus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/perm/kate/PlaybackService$AudioFocus;

    return-object p0
.end method

.method public static values()[Lcom/perm/kate/PlaybackService$AudioFocus;
    .locals 1

    .line 67
    sget-object v0, Lcom/perm/kate/PlaybackService$AudioFocus;->$VALUES:[Lcom/perm/kate/PlaybackService$AudioFocus;

    invoke-virtual {v0}, [Lcom/perm/kate/PlaybackService$AudioFocus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/perm/kate/PlaybackService$AudioFocus;

    return-object v0
.end method
