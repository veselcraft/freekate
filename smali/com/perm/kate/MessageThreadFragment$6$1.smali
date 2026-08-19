.class Lcom/perm/kate/MessageThreadFragment$6$1;
.super Lcom/perm/kate/session/Callback;
.source "MessageThreadFragment.java"


# instance fields
.field final synthetic this$1:Lcom/perm/kate/MessageThreadFragment$6;


# direct methods
.method constructor <init>(Lcom/perm/kate/MessageThreadFragment$6;Landroid/app/Activity;)V
    .locals 0

    .line 383
    iput-object p1, p0, Lcom/perm/kate/MessageThreadFragment$6$1;->this$1:Lcom/perm/kate/MessageThreadFragment$6;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 8

    .line 386
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment$6$1;->this$1:Lcom/perm/kate/MessageThreadFragment$6;

    iget-wide v1, p1, Lcom/perm/kate/MessageThreadFragment$6;->val$id1:J

    iget-object v3, p1, Lcom/perm/kate/MessageThreadFragment$6;->this$0:Lcom/perm/kate/MessageThreadFragment;

    iget-wide v4, v3, Lcom/perm/kate/MessageThreadFragment;->account_id:J

    iget-wide v6, v3, Lcom/perm/kate/MessageThreadFragment;->group_id:J

    iget-object p1, p1, Lcom/perm/kate/MessageThreadFragment$6;->val$text:Ljava/lang/String;

    move-wide v3, v4

    move-wide v5, v6

    move-object v7, p1

    invoke-virtual/range {v0 .. v7}, Lcom/perm/kate/db/DataHelper;->updateMessageText(JJJLjava/lang/String;)Z

    .line 387
    iget-object p1, p0, Lcom/perm/kate/MessageThreadFragment$6$1;->this$1:Lcom/perm/kate/MessageThreadFragment$6;

    iget-object p1, p1, Lcom/perm/kate/MessageThreadFragment$6;->this$0:Lcom/perm/kate/MessageThreadFragment;

    invoke-static {p1}, Lcom/perm/kate/MessageThreadFragment;->access$1300(Lcom/perm/kate/MessageThreadFragment;)V

    return-void
.end method
