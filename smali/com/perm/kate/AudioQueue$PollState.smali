.class public final enum Lcom/perm/kate/AudioQueue$PollState;
.super Ljava/lang/Enum;
.source "AudioQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/AudioQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PollState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/perm/kate/AudioQueue$PollState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/perm/kate/AudioQueue$PollState;

.field public static final enum Started:Lcom/perm/kate/AudioQueue$PollState;

.field public static final enum Stopped:Lcom/perm/kate/AudioQueue$PollState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 309
    new-instance v0, Lcom/perm/kate/AudioQueue$PollState;

    const-string v1, "Started"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/perm/kate/AudioQueue$PollState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/perm/kate/AudioQueue$PollState;->Started:Lcom/perm/kate/AudioQueue$PollState;

    new-instance v1, Lcom/perm/kate/AudioQueue$PollState;

    const-string v3, "Stopped"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/perm/kate/AudioQueue$PollState;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/perm/kate/AudioQueue$PollState;->Stopped:Lcom/perm/kate/AudioQueue$PollState;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/perm/kate/AudioQueue$PollState;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/perm/kate/AudioQueue$PollState;->$VALUES:[Lcom/perm/kate/AudioQueue$PollState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 309
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/perm/kate/AudioQueue$PollState;
    .locals 1

    .line 309
    const-class v0, Lcom/perm/kate/AudioQueue$PollState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/perm/kate/AudioQueue$PollState;

    return-object p0
.end method

.method public static values()[Lcom/perm/kate/AudioQueue$PollState;
    .locals 1

    .line 309
    sget-object v0, Lcom/perm/kate/AudioQueue$PollState;->$VALUES:[Lcom/perm/kate/AudioQueue$PollState;

    invoke-virtual {v0}, [Lcom/perm/kate/AudioQueue$PollState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/perm/kate/AudioQueue$PollState;

    return-object v0
.end method
