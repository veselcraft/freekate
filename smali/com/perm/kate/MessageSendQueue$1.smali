.class Lcom/perm/kate/MessageSendQueue$1;
.super Ljava/lang/Object;
.source "MessageSendQueue.java"

# interfaces
.implements Lcom/perm/kate/MessageSender$MessageSenderCallback;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MessageSendQueue;


# direct methods
.method constructor <init>(Lcom/perm/kate/MessageSendQueue;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/perm/kate/MessageSendQueue$1;->this$0:Lcom/perm/kate/MessageSendQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    .line 128
    iget-object p2, p0, Lcom/perm/kate/MessageSendQueue$1;->this$0:Lcom/perm/kate/MessageSendQueue;

    iget p3, p2, Lcom/perm/kate/MessageSendQueue;->current_message:I

    iget-object p2, p2, Lcom/perm/kate/MessageSendQueue;->messages:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p3, p2, :cond_0

    .line 129
    iget-object p2, p0, Lcom/perm/kate/MessageSendQueue$1;->this$0:Lcom/perm/kate/MessageSendQueue;

    iget-object p3, p2, Lcom/perm/kate/MessageSendQueue;->messages:Ljava/util/ArrayList;

    iget p2, p2, Lcom/perm/kate/MessageSendQueue;->current_message:I

    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/perm/kate/MessageSendQueue$MessageData;

    sget-object p3, Lcom/perm/kate/MessageSendQueue$MessageData$State;->ERROR:Lcom/perm/kate/MessageSendQueue$MessageData$State;

    iput-object p3, p2, Lcom/perm/kate/MessageSendQueue$MessageData;->state:Lcom/perm/kate/MessageSendQueue$MessageData$State;

    .line 131
    :cond_0
    invoke-static {}, Lcom/perm/kate/MessageSender;->sendMessagesBroadcast()V

    .line 134
    instance-of p1, p1, Ljava/io/IOException;

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 135
    iget-object p1, p0, Lcom/perm/kate/MessageSendQueue$1;->this$0:Lcom/perm/kate/MessageSendQueue;

    iput-boolean p2, p1, Lcom/perm/kate/MessageSendQueue;->is_sending:Z

    goto :goto_0

    .line 138
    :cond_1
    iget-object p1, p0, Lcom/perm/kate/MessageSendQueue$1;->this$0:Lcom/perm/kate/MessageSendQueue;

    iget p3, p1, Lcom/perm/kate/MessageSendQueue;->current_message:I

    add-int/lit8 p3, p3, 0x1

    iput p3, p1, Lcom/perm/kate/MessageSendQueue;->current_message:I

    .line 139
    iget-object p1, p1, Lcom/perm/kate/MessageSendQueue;->messages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge p3, p1, :cond_2

    .line 140
    iget-object p1, p0, Lcom/perm/kate/MessageSendQueue$1;->this$0:Lcom/perm/kate/MessageSendQueue;

    invoke-static {p1}, Lcom/perm/kate/MessageSendQueue;->access$100(Lcom/perm/kate/MessageSendQueue;)V

    goto :goto_0

    .line 142
    :cond_2
    iget-object p1, p0, Lcom/perm/kate/MessageSendQueue$1;->this$0:Lcom/perm/kate/MessageSendQueue;

    iput-boolean p2, p1, Lcom/perm/kate/MessageSendQueue;->is_sending:Z

    :goto_0
    return-void
.end method

.method public ready()V
    .locals 0

    return-void
.end method

.method public refreshed()V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/perm/kate/MessageSendQueue$1;->this$0:Lcom/perm/kate/MessageSendQueue;

    invoke-static {v0}, Lcom/perm/kate/MessageSendQueue;->access$000(Lcom/perm/kate/MessageSendQueue;)V

    return-void
.end method

.method public start()V
    .locals 0

    return-void
.end method
