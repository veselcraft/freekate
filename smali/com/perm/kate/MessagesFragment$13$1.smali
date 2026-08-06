.class Lcom/perm/kate/MessagesFragment$13$1;
.super Ljava/lang/Thread;
.source "MessagesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/MessagesFragment$13;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MessagesFragment$13;


# direct methods
.method constructor <init>(Lcom/perm/kate/MessagesFragment$13;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/MessagesFragment$13;

    .prologue
    .line 549
    iput-object p1, p0, Lcom/perm/kate/MessagesFragment$13$1;->this$0:Lcom/perm/kate/MessagesFragment$13;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 552
    const/4 v1, 0x0

    .local v1, "uid":Ljava/lang/Long;
    const/4 v0, 0x0

    .line 553
    .local v0, "chat_id1":Ljava/lang/Long;
    iget-object v2, p0, Lcom/perm/kate/MessagesFragment$13$1;->this$0:Lcom/perm/kate/MessagesFragment$13;

    iget-wide v2, v2, Lcom/perm/kate/MessagesFragment$13;->val$chat_id:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 554
    iget-object v2, p0, Lcom/perm/kate/MessagesFragment$13$1;->this$0:Lcom/perm/kate/MessagesFragment$13;

    iget-wide v2, v2, Lcom/perm/kate/MessagesFragment$13;->val$chat_id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 557
    :goto_0
    iget-object v2, p0, Lcom/perm/kate/MessagesFragment$13$1;->this$0:Lcom/perm/kate/MessagesFragment$13;

    iget-wide v2, v2, Lcom/perm/kate/MessagesFragment$13;->val$group_id:J

    invoke-static {v2, v3}, Lcom/perm/kate/KApplication;->getSession(J)Lcom/perm/kate/session/Session;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/perm/kate/MessagesFragment$13$1;->this$0:Lcom/perm/kate/MessagesFragment$13;

    iget-object v4, v4, Lcom/perm/kate/MessagesFragment$13;->val$activity:Landroid/app/Activity;

    invoke-virtual {v2, v1, v0, v3, v4}, Lcom/perm/kate/session/Session;->deleteMessageThread(Ljava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 558
    return-void

    .line 556
    :cond_0
    iget-object v2, p0, Lcom/perm/kate/MessagesFragment$13$1;->this$0:Lcom/perm/kate/MessagesFragment$13;

    iget-wide v2, v2, Lcom/perm/kate/MessagesFragment$13;->val$message_uid:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_0
.end method
