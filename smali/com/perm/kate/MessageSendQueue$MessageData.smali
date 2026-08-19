.class Lcom/perm/kate/MessageSendQueue$MessageData;
.super Ljava/lang/Object;
.source "MessageSendQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/MessageSendQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MessageData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perm/kate/MessageSendQueue$MessageData$State;
    }
.end annotation


# instance fields
.field attachments:Ljava/util/ArrayList;

.field attachments_objects:Ljava/util/ArrayList;

.field forward_messages:Ljava/util/ArrayList;

.field public group_id:J

.field message:Lcom/perm/kate/api/Message;

.field public payload:Ljava/lang/String;

.field state:Lcom/perm/kate/MessageSendQueue$MessageData$State;

.field public sticker_id:Ljava/lang/Integer;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 351
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/MessageSendQueue$MessageData;->attachments:Ljava/util/ArrayList;

    .line 352
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/perm/kate/MessageSendQueue$MessageData;->attachments_objects:Ljava/util/ArrayList;

    .line 357
    sget-object v0, Lcom/perm/kate/MessageSendQueue$MessageData$State;->QUEUE:Lcom/perm/kate/MessageSendQueue$MessageData$State;

    iput-object v0, p0, Lcom/perm/kate/MessageSendQueue$MessageData;->state:Lcom/perm/kate/MessageSendQueue$MessageData$State;

    return-void
.end method
