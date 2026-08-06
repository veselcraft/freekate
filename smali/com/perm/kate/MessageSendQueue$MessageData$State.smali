.class final enum Lcom/perm/kate/MessageSendQueue$MessageData$State;
.super Ljava/lang/Enum;
.source "MessageSendQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/MessageSendQueue$MessageData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/perm/kate/MessageSendQueue$MessageData$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/perm/kate/MessageSendQueue$MessageData$State;

.field public static final enum ERROR:Lcom/perm/kate/MessageSendQueue$MessageData$State;

.field public static final enum QUEUE:Lcom/perm/kate/MessageSendQueue$MessageData$State;

.field public static final enum SENDING:Lcom/perm/kate/MessageSendQueue$MessageData$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 301
    new-instance v0, Lcom/perm/kate/MessageSendQueue$MessageData$State;

    const-string v1, "QUEUE"

    invoke-direct {v0, v1, v2}, Lcom/perm/kate/MessageSendQueue$MessageData$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/perm/kate/MessageSendQueue$MessageData$State;->QUEUE:Lcom/perm/kate/MessageSendQueue$MessageData$State;

    new-instance v0, Lcom/perm/kate/MessageSendQueue$MessageData$State;

    const-string v1, "SENDING"

    invoke-direct {v0, v1, v3}, Lcom/perm/kate/MessageSendQueue$MessageData$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/perm/kate/MessageSendQueue$MessageData$State;->SENDING:Lcom/perm/kate/MessageSendQueue$MessageData$State;

    new-instance v0, Lcom/perm/kate/MessageSendQueue$MessageData$State;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v4}, Lcom/perm/kate/MessageSendQueue$MessageData$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/perm/kate/MessageSendQueue$MessageData$State;->ERROR:Lcom/perm/kate/MessageSendQueue$MessageData$State;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/perm/kate/MessageSendQueue$MessageData$State;

    sget-object v1, Lcom/perm/kate/MessageSendQueue$MessageData$State;->QUEUE:Lcom/perm/kate/MessageSendQueue$MessageData$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/perm/kate/MessageSendQueue$MessageData$State;->SENDING:Lcom/perm/kate/MessageSendQueue$MessageData$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/perm/kate/MessageSendQueue$MessageData$State;->ERROR:Lcom/perm/kate/MessageSendQueue$MessageData$State;

    aput-object v1, v0, v4

    sput-object v0, Lcom/perm/kate/MessageSendQueue$MessageData$State;->$VALUES:[Lcom/perm/kate/MessageSendQueue$MessageData$State;

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
    .line 301
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/perm/kate/MessageSendQueue$MessageData$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 301
    const-class v0, Lcom/perm/kate/MessageSendQueue$MessageData$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/MessageSendQueue$MessageData$State;

    return-object v0
.end method

.method public static values()[Lcom/perm/kate/MessageSendQueue$MessageData$State;
    .locals 1

    .prologue
    .line 301
    sget-object v0, Lcom/perm/kate/MessageSendQueue$MessageData$State;->$VALUES:[Lcom/perm/kate/MessageSendQueue$MessageData$State;

    invoke-virtual {v0}, [Lcom/perm/kate/MessageSendQueue$MessageData$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/perm/kate/MessageSendQueue$MessageData$State;

    return-object v0
.end method
