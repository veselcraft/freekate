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
        "Ljava/lang/Enum",
        "<",
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
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 62
    new-instance v0, Lcom/perm/kate/PlaybackService$AudioFocus;

    const-string v1, "NoFocusNoDuck"

    invoke-direct {v0, v1, v2}, Lcom/perm/kate/PlaybackService$AudioFocus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/perm/kate/PlaybackService$AudioFocus;->NoFocusNoDuck:Lcom/perm/kate/PlaybackService$AudioFocus;

    .line 63
    new-instance v0, Lcom/perm/kate/PlaybackService$AudioFocus;

    const-string v1, "NoFocusCanDuck"

    invoke-direct {v0, v1, v3}, Lcom/perm/kate/PlaybackService$AudioFocus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/perm/kate/PlaybackService$AudioFocus;->NoFocusCanDuck:Lcom/perm/kate/PlaybackService$AudioFocus;

    .line 64
    new-instance v0, Lcom/perm/kate/PlaybackService$AudioFocus;

    const-string v1, "Focused"

    invoke-direct {v0, v1, v4}, Lcom/perm/kate/PlaybackService$AudioFocus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/perm/kate/PlaybackService$AudioFocus;->Focused:Lcom/perm/kate/PlaybackService$AudioFocus;

    .line 61
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/perm/kate/PlaybackService$AudioFocus;

    sget-object v1, Lcom/perm/kate/PlaybackService$AudioFocus;->NoFocusNoDuck:Lcom/perm/kate/PlaybackService$AudioFocus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/perm/kate/PlaybackService$AudioFocus;->NoFocusCanDuck:Lcom/perm/kate/PlaybackService$AudioFocus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/perm/kate/PlaybackService$AudioFocus;->Focused:Lcom/perm/kate/PlaybackService$AudioFocus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/perm/kate/PlaybackService$AudioFocus;->$VALUES:[Lcom/perm/kate/PlaybackService$AudioFocus;

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
    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/perm/kate/PlaybackService$AudioFocus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 61
    const-class v0, Lcom/perm/kate/PlaybackService$AudioFocus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/PlaybackService$AudioFocus;

    return-object v0
.end method

.method public static values()[Lcom/perm/kate/PlaybackService$AudioFocus;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/perm/kate/PlaybackService$AudioFocus;->$VALUES:[Lcom/perm/kate/PlaybackService$AudioFocus;

    invoke-virtual {v0}, [Lcom/perm/kate/PlaybackService$AudioFocus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/perm/kate/PlaybackService$AudioFocus;

    return-object v0
.end method
