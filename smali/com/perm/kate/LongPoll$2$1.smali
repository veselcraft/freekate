.class Lcom/perm/kate/LongPoll$2$1;
.super Lcom/perm/kate/session/Callback;
.source "LongPoll.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/LongPoll$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/LongPoll$2;


# direct methods
.method constructor <init>(Lcom/perm/kate/LongPoll$2;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$1"    # Lcom/perm/kate/LongPoll$2;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 477
    iput-object p1, p0, Lcom/perm/kate/LongPoll$2$1;->this$1:Lcom/perm/kate/LongPoll$2;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 10
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    const/4 v9, 0x0

    .line 481
    move-object v8, p1

    check-cast v8, Ljava/util/ArrayList;

    .line 482
    .local v8, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Message;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 492
    :cond_0
    :goto_0
    return-void

    .line 485
    :cond_1
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Message;

    invoke-static {v0}, Lcom/perm/kate/LongPoll;->isMessageBroken(Lcom/perm/kate/api/Message;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 488
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v0, p0, Lcom/perm/kate/LongPoll$2$1;->this$1:Lcom/perm/kate/LongPoll$2;

    iget-wide v2, v0, Lcom/perm/kate/LongPoll$2;->val$message_id:J

    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v0}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iget-object v0, p0, Lcom/perm/kate/LongPoll$2$1;->this$1:Lcom/perm/kate/LongPoll$2;

    iget-object v0, v0, Lcom/perm/kate/LongPoll$2;->this$0:Lcom/perm/kate/LongPoll;

    iget-wide v6, v0, Lcom/perm/kate/LongPoll;->group_id:J

    invoke-virtual/range {v1 .. v7}, Lcom/perm/kate/db/DataHelper;->deleteMessage(JJJ)Z

    .line 490
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/Message;

    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v2}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/perm/kate/LongPoll$2$1;->this$1:Lcom/perm/kate/LongPoll$2;

    iget-object v5, v5, Lcom/perm/kate/LongPoll$2;->this$0:Lcom/perm/kate/LongPoll;

    iget-wide v5, v5, Lcom/perm/kate/LongPoll;->group_id:J

    invoke-virtual/range {v0 .. v6}, Lcom/perm/kate/db/DataHelper;->createOrUpdateMessage(Lcom/perm/kate/api/Message;JZJ)Z

    .line 491
    iget-object v0, p0, Lcom/perm/kate/LongPoll$2$1;->this$1:Lcom/perm/kate/LongPoll$2;

    iget-object v0, v0, Lcom/perm/kate/LongPoll$2;->this$0:Lcom/perm/kate/LongPoll;

    invoke-static {v0}, Lcom/perm/kate/LongPoll;->access$400(Lcom/perm/kate/LongPoll;)V

    goto :goto_0
.end method
