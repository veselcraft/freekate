.class public final enum Lcom/perm/kate/LongPoll$PollState;
.super Ljava/lang/Enum;
.source "LongPoll.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/LongPoll;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PollState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/perm/kate/LongPoll$PollState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/perm/kate/LongPoll$PollState;

.field public static final enum Started:Lcom/perm/kate/LongPoll$PollState;

.field public static final enum Stopped:Lcom/perm/kate/LongPoll$PollState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 523
    new-instance v0, Lcom/perm/kate/LongPoll$PollState;

    const-string v1, "Started"

    invoke-direct {v0, v1, v2}, Lcom/perm/kate/LongPoll$PollState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/perm/kate/LongPoll$PollState;->Started:Lcom/perm/kate/LongPoll$PollState;

    new-instance v0, Lcom/perm/kate/LongPoll$PollState;

    const-string v1, "Stopped"

    invoke-direct {v0, v1, v3}, Lcom/perm/kate/LongPoll$PollState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/perm/kate/LongPoll$PollState;->Stopped:Lcom/perm/kate/LongPoll$PollState;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/perm/kate/LongPoll$PollState;

    sget-object v1, Lcom/perm/kate/LongPoll$PollState;->Started:Lcom/perm/kate/LongPoll$PollState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/perm/kate/LongPoll$PollState;->Stopped:Lcom/perm/kate/LongPoll$PollState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/perm/kate/LongPoll$PollState;->$VALUES:[Lcom/perm/kate/LongPoll$PollState;

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
    .line 523
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/perm/kate/LongPoll$PollState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 523
    const-class v0, Lcom/perm/kate/LongPoll$PollState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/LongPoll$PollState;

    return-object v0
.end method

.method public static values()[Lcom/perm/kate/LongPoll$PollState;
    .locals 1

    .prologue
    .line 523
    sget-object v0, Lcom/perm/kate/LongPoll$PollState;->$VALUES:[Lcom/perm/kate/LongPoll$PollState;

    invoke-virtual {v0}, [Lcom/perm/kate/LongPoll$PollState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/perm/kate/LongPoll$PollState;

    return-object v0
.end method
