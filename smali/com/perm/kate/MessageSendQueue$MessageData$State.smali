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
        "Ljava/lang/Enum<",
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
    .locals 7

    .line 356
    new-instance v0, Lcom/perm/kate/MessageSendQueue$MessageData$State;

    const-string v1, "QUEUE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/perm/kate/MessageSendQueue$MessageData$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/perm/kate/MessageSendQueue$MessageData$State;->QUEUE:Lcom/perm/kate/MessageSendQueue$MessageData$State;

    new-instance v1, Lcom/perm/kate/MessageSendQueue$MessageData$State;

    const-string v3, "SENDING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/perm/kate/MessageSendQueue$MessageData$State;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/perm/kate/MessageSendQueue$MessageData$State;->SENDING:Lcom/perm/kate/MessageSendQueue$MessageData$State;

    new-instance v3, Lcom/perm/kate/MessageSendQueue$MessageData$State;

    const-string v5, "ERROR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/perm/kate/MessageSendQueue$MessageData$State;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/perm/kate/MessageSendQueue$MessageData$State;->ERROR:Lcom/perm/kate/MessageSendQueue$MessageData$State;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/perm/kate/MessageSendQueue$MessageData$State;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/perm/kate/MessageSendQueue$MessageData$State;->$VALUES:[Lcom/perm/kate/MessageSendQueue$MessageData$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 356
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/perm/kate/MessageSendQueue$MessageData$State;
    .locals 1

    .line 356
    const-class v0, Lcom/perm/kate/MessageSendQueue$MessageData$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/perm/kate/MessageSendQueue$MessageData$State;

    return-object p0
.end method

.method public static values()[Lcom/perm/kate/MessageSendQueue$MessageData$State;
    .locals 1

    .line 356
    sget-object v0, Lcom/perm/kate/MessageSendQueue$MessageData$State;->$VALUES:[Lcom/perm/kate/MessageSendQueue$MessageData$State;

    invoke-virtual {v0}, [Lcom/perm/kate/MessageSendQueue$MessageData$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/perm/kate/MessageSendQueue$MessageData$State;

    return-object v0
.end method
