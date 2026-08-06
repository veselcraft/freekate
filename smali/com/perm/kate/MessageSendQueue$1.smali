.class Lcom/perm/kate/MessageSendQueue$1;
.super Ljava/lang/Object;
.source "MessageSendQueue.java"

# interfaces
.implements Lcom/perm/kate/MessageSender$MessageSenderCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/MessageSendQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MessageSendQueue;


# direct methods
.method constructor <init>(Lcom/perm/kate/MessageSendQueue;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/MessageSendQueue;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/perm/kate/MessageSendQueue$1;->this$0:Lcom/perm/kate/MessageSendQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 3
    .param p1, "ex"    # Ljava/lang/Throwable;
    .param p2, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "attachments":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "attachments_objects":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const/4 v2, 0x0

    .line 112
    iget-object v0, p0, Lcom/perm/kate/MessageSendQueue$1;->this$0:Lcom/perm/kate/MessageSendQueue;

    iget v0, v0, Lcom/perm/kate/MessageSendQueue;->current_message:I

    iget-object v1, p0, Lcom/perm/kate/MessageSendQueue$1;->this$0:Lcom/perm/kate/MessageSendQueue;

    iget-object v1, v1, Lcom/perm/kate/MessageSendQueue;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 113
    iget-object v0, p0, Lcom/perm/kate/MessageSendQueue$1;->this$0:Lcom/perm/kate/MessageSendQueue;

    iget-object v0, v0, Lcom/perm/kate/MessageSendQueue;->messages:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/perm/kate/MessageSendQueue$1;->this$0:Lcom/perm/kate/MessageSendQueue;

    iget v1, v1, Lcom/perm/kate/MessageSendQueue;->current_message:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/MessageSendQueue$MessageData;

    sget-object v1, Lcom/perm/kate/MessageSendQueue$MessageData$State;->ERROR:Lcom/perm/kate/MessageSendQueue$MessageData$State;

    iput-object v1, v0, Lcom/perm/kate/MessageSendQueue$MessageData;->state:Lcom/perm/kate/MessageSendQueue$MessageData$State;

    .line 115
    :cond_0
    invoke-static {}, Lcom/perm/kate/MessageSender;->sendMessagesBroadcast()V

    .line 118
    instance-of v0, p1, Ljava/io/IOException;

    if-eqz v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/perm/kate/MessageSendQueue$1;->this$0:Lcom/perm/kate/MessageSendQueue;

    iput-boolean v2, v0, Lcom/perm/kate/MessageSendQueue;->is_sending:Z

    .line 128
    :goto_0
    return-void

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/MessageSendQueue$1;->this$0:Lcom/perm/kate/MessageSendQueue;

    iget v1, v0, Lcom/perm/kate/MessageSendQueue;->current_message:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/perm/kate/MessageSendQueue;->current_message:I

    .line 123
    iget-object v0, p0, Lcom/perm/kate/MessageSendQueue$1;->this$0:Lcom/perm/kate/MessageSendQueue;

    iget v0, v0, Lcom/perm/kate/MessageSendQueue;->current_message:I

    iget-object v1, p0, Lcom/perm/kate/MessageSendQueue$1;->this$0:Lcom/perm/kate/MessageSendQueue;

    iget-object v1, v1, Lcom/perm/kate/MessageSendQueue;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 124
    iget-object v0, p0, Lcom/perm/kate/MessageSendQueue$1;->this$0:Lcom/perm/kate/MessageSendQueue;

    invoke-static {v0}, Lcom/perm/kate/MessageSendQueue;->access$100(Lcom/perm/kate/MessageSendQueue;)V

    goto :goto_0

    .line 126
    :cond_2
    iget-object v0, p0, Lcom/perm/kate/MessageSendQueue$1;->this$0:Lcom/perm/kate/MessageSendQueue;

    iput-boolean v2, v0, Lcom/perm/kate/MessageSendQueue;->is_sending:Z

    goto :goto_0
.end method

.method public ready()V
    .locals 0

    .prologue
    .line 97
    return-void
.end method

.method public refreshed()V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/perm/kate/MessageSendQueue$1;->this$0:Lcom/perm/kate/MessageSendQueue;

    invoke-static {v0}, Lcom/perm/kate/MessageSendQueue;->access$000(Lcom/perm/kate/MessageSendQueue;)V

    .line 102
    return-void
.end method

.method public start()V
    .locals 0

    .prologue
    .line 92
    return-void
.end method
