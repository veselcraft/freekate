.class Lcom/perm/kate/LongPoll$2;
.super Lcom/perm/kate/session/Callback;
.source "LongPoll.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/LongPoll;


# direct methods
.method constructor <init>(Lcom/perm/kate/LongPoll;Landroid/app/Activity;)V
    .locals 0

    .line 628
    iput-object p1, p0, Lcom/perm/kate/LongPoll$2;->this$0:Lcom/perm/kate/LongPoll;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 10

    .line 632
    check-cast p1, Ljava/util/ArrayList;

    .line 633
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/perm/kate/api/Message;

    .line 635
    invoke-static {v2}, Lcom/perm/kate/LongPoll;->isMessageBroken(Lcom/perm/kate/api/Message;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 639
    iput-boolean v0, v2, Lcom/perm/kate/api/Message;->read_state:Z

    .line 642
    sget-object v3, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v4, v2, Lcom/perm/kate/api/Message;->mid:J

    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v0}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iget-object v0, p0, Lcom/perm/kate/LongPoll$2;->this$0:Lcom/perm/kate/LongPoll;

    iget-wide v8, v0, Lcom/perm/kate/LongPoll;->group_id:J

    invoke-virtual/range {v3 .. v9}, Lcom/perm/kate/db/DataHelper;->deleteMessage(JJJ)Z

    .line 644
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v0}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/perm/kate/LongPoll$2;->this$0:Lcom/perm/kate/LongPoll;

    iget-wide v6, v0, Lcom/perm/kate/LongPoll;->group_id:J

    invoke-virtual/range {v1 .. v7}, Lcom/perm/kate/db/DataHelper;->createOrUpdateMessage(Lcom/perm/kate/api/Message;JZJ)Z

    goto :goto_0

    .line 646
    :cond_1
    iget-object p1, p0, Lcom/perm/kate/LongPoll$2;->this$0:Lcom/perm/kate/LongPoll;

    invoke-static {p1}, Lcom/perm/kate/LongPoll;->access$400(Lcom/perm/kate/LongPoll;)V

    return-void
.end method
