.class Lcom/perm/kate/DialogAttachmentsFragment$3;
.super Ljava/lang/Object;
.source "DialogAttachmentsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/DialogAttachmentsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/DialogAttachmentsFragment;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/perm/kate/DialogAttachmentsFragment$3;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 164
    :try_start_0
    iget-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment$3;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-static {v0}, Lcom/perm/kate/DialogAttachmentsFragment;->access$200(Lcom/perm/kate/DialogAttachmentsFragment;)Lcom/perm/kate/MessageAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment$3;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-static {v0}, Lcom/perm/kate/DialogAttachmentsFragment;->access$300(Lcom/perm/kate/DialogAttachmentsFragment;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/perm/kate/DialogAttachmentsFragment$3;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-static {v3}, Lcom/perm/kate/DialogAttachmentsFragment;->access$400(Lcom/perm/kate/DialogAttachmentsFragment;)J

    move-result-wide v3

    iget-object v5, p0, Lcom/perm/kate/DialogAttachmentsFragment$3;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    iget-wide v5, v5, Lcom/perm/kate/DialogAttachmentsFragment;->account_id:J

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    invoke-static/range {v1 .. v9}, Lcom/perm/kate/MessageThreadFragment;->getMessagesFromDb(JJJZJ)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/DialogAttachmentsFragment;->messages:Ljava/util/ArrayList;

    .line 167
    iget-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment$3;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-static {v0}, Lcom/perm/kate/DialogAttachmentsFragment;->access$400(Lcom/perm/kate/DialogAttachmentsFragment;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/DialogAttachmentsFragment$3;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-static {v1}, Lcom/perm/kate/DialogAttachmentsFragment;->access$300(Lcom/perm/kate/DialogAttachmentsFragment;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/perm/kate/ThreadIdHelper;->makeThreadId(Ljava/lang/Long;Ljava/lang/Long;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/perm/kate/HiddenChats;->isHiddenNow(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 168
    iget-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment$3;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    iget-object v0, v0, Lcom/perm/kate/DialogAttachmentsFragment;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment$3;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    iget-boolean v1, v0, Lcom/perm/kate/DialogAttachmentsFragment;->isGrid:Z

    if-nez v1, :cond_2

    .line 170
    invoke-static {v0}, Lcom/perm/kate/DialogAttachmentsFragment;->access$500(Lcom/perm/kate/DialogAttachmentsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    .line 171
    iget-object v1, p0, Lcom/perm/kate/DialogAttachmentsFragment$3;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-static {v1}, Lcom/perm/kate/DialogAttachmentsFragment;->access$200(Lcom/perm/kate/DialogAttachmentsFragment;)Lcom/perm/kate/MessageAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/perm/kate/MessageAdapter;->displayNewData(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 173
    :cond_2
    iget-object v1, v0, Lcom/perm/kate/DialogAttachmentsFragment;->photo_list_adapter:Lcom/perm/kate/PhotoListAdapter;

    invoke-static {v0}, Lcom/perm/kate/DialogAttachmentsFragment;->access$600(Lcom/perm/kate/DialogAttachmentsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v1, Lcom/perm/kate/PhotoListAdapter;->photos:Ljava/util/ArrayList;

    .line 174
    iget-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment$3;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    iget-object v0, v0, Lcom/perm/kate/DialogAttachmentsFragment;->photo_list_adapter:Lcom/perm/kate/PhotoListAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 177
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 178
    invoke-static {v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
