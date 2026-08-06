.class Lcom/perm/kate/LongPoll$2;
.super Ljava/lang/Thread;
.source "LongPoll.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/LongPoll;->refreshMessageInThread(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/LongPoll;

.field final synthetic val$message_id:J


# direct methods
.method constructor <init>(Lcom/perm/kate/LongPoll;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/LongPoll;

    .prologue
    .line 472
    iput-object p1, p0, Lcom/perm/kate/LongPoll$2;->this$0:Lcom/perm/kate/LongPoll;

    iput-wide p2, p0, Lcom/perm/kate/LongPoll$2;->val$message_id:J

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 475
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    if-nez v2, :cond_0

    .line 496
    :goto_0
    return-void

    .line 477
    :cond_0
    new-instance v0, Lcom/perm/kate/LongPoll$2$1;

    invoke-direct {v0, p0, v4}, Lcom/perm/kate/LongPoll$2$1;-><init>(Lcom/perm/kate/LongPoll$2;Landroid/app/Activity;)V

    .line 493
    .local v0, "getMessageCallback":Lcom/perm/kate/session/Callback;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 494
    .local v1, "message_ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-wide v2, p0, Lcom/perm/kate/LongPoll$2;->val$message_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 495
    iget-object v2, p0, Lcom/perm/kate/LongPoll$2;->this$0:Lcom/perm/kate/LongPoll;

    iget-wide v2, v2, Lcom/perm/kate/LongPoll;->group_id:J

    invoke-static {v2, v3}, Lcom/perm/kate/KApplication;->getSession(J)Lcom/perm/kate/session/Session;

    move-result-object v2

    invoke-virtual {v2, v1, v0, v4}, Lcom/perm/kate/session/Session;->getMessagesById(Ljava/util/ArrayList;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0
.end method
