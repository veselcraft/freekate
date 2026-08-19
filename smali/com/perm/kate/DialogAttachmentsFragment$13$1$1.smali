.class Lcom/perm/kate/DialogAttachmentsFragment$13$1$1;
.super Ljava/lang/Object;
.source "DialogAttachmentsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$2:Lcom/perm/kate/DialogAttachmentsFragment$13$1;


# direct methods
.method constructor <init>(Lcom/perm/kate/DialogAttachmentsFragment$13$1;)V
    .locals 0

    .line 629
    iput-object p1, p0, Lcom/perm/kate/DialogAttachmentsFragment$13$1$1;->this$2:Lcom/perm/kate/DialogAttachmentsFragment$13$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 634
    :try_start_0
    iget-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment$13$1$1;->this$2:Lcom/perm/kate/DialogAttachmentsFragment$13$1;

    iget-object v0, v0, Lcom/perm/kate/DialogAttachmentsFragment$13$1;->this$1:Lcom/perm/kate/DialogAttachmentsFragment$13;

    iget-object v1, v0, Lcom/perm/kate/DialogAttachmentsFragment$13;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    iget-wide v2, v0, Lcom/perm/kate/DialogAttachmentsFragment$13;->val$long_mid:J

    invoke-static {v1, v2, v3}, Lcom/perm/kate/DialogAttachmentsFragment;->access$2400(Lcom/perm/kate/DialogAttachmentsFragment;J)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 637
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/DialogAttachmentsFragment$13$1$1;->this$2:Lcom/perm/kate/DialogAttachmentsFragment$13$1;

    iget-object v1, v1, Lcom/perm/kate/DialogAttachmentsFragment$13$1;->this$1:Lcom/perm/kate/DialogAttachmentsFragment$13;

    iget-object v1, v1, Lcom/perm/kate/DialogAttachmentsFragment$13;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    iget-object v1, v1, Lcom/perm/kate/DialogAttachmentsFragment;->messages:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Message;

    iget-object v1, p0, Lcom/perm/kate/DialogAttachmentsFragment$13$1$1;->this$2:Lcom/perm/kate/DialogAttachmentsFragment$13$1;

    iget-boolean v1, v1, Lcom/perm/kate/DialogAttachmentsFragment$13$1;->val$new_important:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Message;->important:Ljava/lang/Boolean;

    .line 638
    iget-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment$13$1$1;->this$2:Lcom/perm/kate/DialogAttachmentsFragment$13$1;

    iget-object v0, v0, Lcom/perm/kate/DialogAttachmentsFragment$13$1;->this$1:Lcom/perm/kate/DialogAttachmentsFragment$13;

    iget-object v0, v0, Lcom/perm/kate/DialogAttachmentsFragment$13;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-static {v0}, Lcom/perm/kate/DialogAttachmentsFragment;->access$200(Lcom/perm/kate/DialogAttachmentsFragment;)Lcom/perm/kate/MessageAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 640
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 641
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
