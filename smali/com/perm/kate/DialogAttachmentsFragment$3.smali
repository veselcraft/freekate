.class Lcom/perm/kate/DialogAttachmentsFragment$3;
.super Ljava/lang/Object;
.source "DialogAttachmentsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/DialogAttachmentsFragment;->requeryOnUiThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/DialogAttachmentsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/DialogAttachmentsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/DialogAttachmentsFragment;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/perm/kate/DialogAttachmentsFragment$3;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    .line 161
    :try_start_0
    iget-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment$3;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-static {v0}, Lcom/perm/kate/DialogAttachmentsFragment;->access$200(Lcom/perm/kate/DialogAttachmentsFragment;)Lcom/perm/kate/MessageAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    .line 172
    :goto_0
    return-void

    .line 163
    :cond_0
    iget-object v11, p0, Lcom/perm/kate/DialogAttachmentsFragment$3;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    iget-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment$3;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-static {v0}, Lcom/perm/kate/DialogAttachmentsFragment;->access$300(Lcom/perm/kate/DialogAttachmentsFragment;)J

    move-result-wide v0

    iget-object v2, p0, Lcom/perm/kate/DialogAttachmentsFragment$3;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-static {v2}, Lcom/perm/kate/DialogAttachmentsFragment;->access$400(Lcom/perm/kate/DialogAttachmentsFragment;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/perm/kate/DialogAttachmentsFragment$3;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    iget-wide v4, v4, Lcom/perm/kate/DialogAttachmentsFragment;->account_id:J

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    invoke-static/range {v0 .. v8}, Lcom/perm/kate/MessageThreadFragment;->getMessagesFromDb(JJJZJ)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, v11, Lcom/perm/kate/DialogAttachmentsFragment;->messages:Ljava/util/ArrayList;

    .line 164
    iget-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment$3;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-static {v0}, Lcom/perm/kate/DialogAttachmentsFragment;->access$400(Lcom/perm/kate/DialogAttachmentsFragment;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/DialogAttachmentsFragment$3;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-static {v1}, Lcom/perm/kate/DialogAttachmentsFragment;->access$300(Lcom/perm/kate/DialogAttachmentsFragment;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/perm/kate/ThreadIdHelper;->makeThreadId(Ljava/lang/Long;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/perm/kate/HiddenChats;->isHiddenNow(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment$3;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    iget-object v0, v0, Lcom/perm/kate/DialogAttachmentsFragment;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment$3;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-static {v0}, Lcom/perm/kate/DialogAttachmentsFragment;->access$500(Lcom/perm/kate/DialogAttachmentsFragment;)Ljava/util/ArrayList;

    move-result-object v9

    .line 167
    .local v9, "messages_displayed":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Message;>;"
    iget-object v0, p0, Lcom/perm/kate/DialogAttachmentsFragment$3;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-static {v0}, Lcom/perm/kate/DialogAttachmentsFragment;->access$200(Lcom/perm/kate/DialogAttachmentsFragment;)Lcom/perm/kate/MessageAdapter;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/perm/kate/MessageAdapter;->displayNewData(Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 168
    .end local v9    # "messages_displayed":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Message;>;"
    :catch_0
    move-exception v10

    .line 169
    .local v10, "th":Ljava/lang/Throwable;
    invoke-virtual {v10}, Ljava/lang/Throwable;->printStackTrace()V

    .line 170
    invoke-static {v10}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
