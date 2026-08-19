.class Lcom/perm/kate/MessagesFragment$15$1;
.super Ljava/lang/Thread;
.source "MessagesFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MessagesFragment$15;


# direct methods
.method constructor <init>(Lcom/perm/kate/MessagesFragment$15;)V
    .locals 0

    .line 682
    iput-object p1, p0, Lcom/perm/kate/MessagesFragment$15$1;->this$0:Lcom/perm/kate/MessagesFragment$15;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 686
    iget-object v0, p0, Lcom/perm/kate/MessagesFragment$15$1;->this$0:Lcom/perm/kate/MessagesFragment$15;

    iget-wide v1, v0, Lcom/perm/kate/MessagesFragment$15;->val$chat_id:J

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    cmp-long v6, v1, v4

    if-lez v6, :cond_0

    .line 687
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object v1, v0

    move-object v0, v3

    goto :goto_0

    .line 689
    :cond_0
    iget-wide v0, v0, Lcom/perm/kate/MessagesFragment$15;->val$message_uid:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    move-object v1, v3

    .line 690
    :goto_0
    iget-object v2, p0, Lcom/perm/kate/MessagesFragment$15$1;->this$0:Lcom/perm/kate/MessagesFragment$15;

    iget-wide v4, v2, Lcom/perm/kate/MessagesFragment$15;->val$group_id:J

    invoke-static {v4, v5}, Lcom/perm/kate/KApplication;->getSession(J)Lcom/perm/kate/session/Session;

    move-result-object v2

    iget-object v4, p0, Lcom/perm/kate/MessagesFragment$15$1;->this$0:Lcom/perm/kate/MessagesFragment$15;

    iget-object v4, v4, Lcom/perm/kate/MessagesFragment$15;->val$activity:Landroid/app/Activity;

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/perm/kate/session/Session;->deleteMessageThread(Ljava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
