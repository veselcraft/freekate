.class Lcom/perm/kate/DialogAttachmentsFragment$13$1$1;
.super Ljava/lang/Object;
.source "DialogAttachmentsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/DialogAttachmentsFragment$13$1;->ready(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/perm/kate/DialogAttachmentsFragment$13$1;


# direct methods
.method constructor <init>(Lcom/perm/kate/DialogAttachmentsFragment$13$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/perm/kate/DialogAttachmentsFragment$13$1;

    .prologue
    .line 527
    iput-object p1, p0, Lcom/perm/kate/DialogAttachmentsFragment$13$1$1;->this$2:Lcom/perm/kate/DialogAttachmentsFragment$13$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 532
    :try_start_0
    iget-object v2, p0, Lcom/perm/kate/DialogAttachmentsFragment$13$1$1;->this$2:Lcom/perm/kate/DialogAttachmentsFragment$13$1;

    iget-object v2, v2, Lcom/perm/kate/DialogAttachmentsFragment$13$1;->this$1:Lcom/perm/kate/DialogAttachmentsFragment$13;

    iget-object v2, v2, Lcom/perm/kate/DialogAttachmentsFragment$13;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    iget-object v3, p0, Lcom/perm/kate/DialogAttachmentsFragment$13$1$1;->this$2:Lcom/perm/kate/DialogAttachmentsFragment$13$1;

    iget-object v3, v3, Lcom/perm/kate/DialogAttachmentsFragment$13$1;->this$1:Lcom/perm/kate/DialogAttachmentsFragment$13;

    iget-wide v4, v3, Lcom/perm/kate/DialogAttachmentsFragment$13;->val$long_mid:J

    invoke-static {v2, v4, v5}, Lcom/perm/kate/DialogAttachmentsFragment;->access$2300(Lcom/perm/kate/DialogAttachmentsFragment;J)I

    move-result v0

    .line 533
    .local v0, "pos":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 541
    .end local v0    # "pos":I
    :goto_0
    return-void

    .line 535
    .restart local v0    # "pos":I
    :cond_0
    iget-object v2, p0, Lcom/perm/kate/DialogAttachmentsFragment$13$1$1;->this$2:Lcom/perm/kate/DialogAttachmentsFragment$13$1;

    iget-object v2, v2, Lcom/perm/kate/DialogAttachmentsFragment$13$1;->this$1:Lcom/perm/kate/DialogAttachmentsFragment$13;

    iget-object v2, v2, Lcom/perm/kate/DialogAttachmentsFragment$13;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    iget-object v2, v2, Lcom/perm/kate/DialogAttachmentsFragment;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/Message;

    iget-object v3, p0, Lcom/perm/kate/DialogAttachmentsFragment$13$1$1;->this$2:Lcom/perm/kate/DialogAttachmentsFragment$13$1;

    iget-boolean v3, v3, Lcom/perm/kate/DialogAttachmentsFragment$13$1;->val$new_important:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Lcom/perm/kate/api/Message;->important:Ljava/lang/Boolean;

    .line 536
    iget-object v2, p0, Lcom/perm/kate/DialogAttachmentsFragment$13$1$1;->this$2:Lcom/perm/kate/DialogAttachmentsFragment$13$1;

    iget-object v2, v2, Lcom/perm/kate/DialogAttachmentsFragment$13$1;->this$1:Lcom/perm/kate/DialogAttachmentsFragment$13;

    iget-object v2, v2, Lcom/perm/kate/DialogAttachmentsFragment$13;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-static {v2}, Lcom/perm/kate/DialogAttachmentsFragment;->access$200(Lcom/perm/kate/DialogAttachmentsFragment;)Lcom/perm/kate/MessageAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/perm/kate/MessageAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 537
    .end local v0    # "pos":I
    :catch_0
    move-exception v1

    .line 538
    .local v1, "th":Ljava/lang/Throwable;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 539
    invoke-static {v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
