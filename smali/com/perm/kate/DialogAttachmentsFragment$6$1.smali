.class Lcom/perm/kate/DialogAttachmentsFragment$6$1;
.super Ljava/lang/Object;
.source "DialogAttachmentsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/DialogAttachmentsFragment$6;->ready(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/DialogAttachmentsFragment$6;

.field final synthetic val$messages_tmp:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/perm/kate/DialogAttachmentsFragment$6;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$1"    # Lcom/perm/kate/DialogAttachmentsFragment$6;

    .prologue
    .line 297
    iput-object p1, p0, Lcom/perm/kate/DialogAttachmentsFragment$6$1;->this$1:Lcom/perm/kate/DialogAttachmentsFragment$6;

    iput-object p2, p0, Lcom/perm/kate/DialogAttachmentsFragment$6$1;->val$messages_tmp:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 301
    iget-object v1, p0, Lcom/perm/kate/DialogAttachmentsFragment$6$1;->this$1:Lcom/perm/kate/DialogAttachmentsFragment$6;

    iget-object v1, v1, Lcom/perm/kate/DialogAttachmentsFragment$6;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-static {v1}, Lcom/perm/kate/DialogAttachmentsFragment;->access$700(Lcom/perm/kate/DialogAttachmentsFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 302
    iget-object v1, p0, Lcom/perm/kate/DialogAttachmentsFragment$6$1;->this$1:Lcom/perm/kate/DialogAttachmentsFragment$6;

    iget-object v1, v1, Lcom/perm/kate/DialogAttachmentsFragment$6;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    iget-object v1, v1, Lcom/perm/kate/DialogAttachmentsFragment;->messages:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/perm/kate/DialogAttachmentsFragment$6$1;->val$messages_tmp:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 307
    :goto_0
    iget-object v1, p0, Lcom/perm/kate/DialogAttachmentsFragment$6$1;->this$1:Lcom/perm/kate/DialogAttachmentsFragment$6;

    iget-object v1, v1, Lcom/perm/kate/DialogAttachmentsFragment$6;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-static {v1}, Lcom/perm/kate/DialogAttachmentsFragment;->access$1200(Lcom/perm/kate/DialogAttachmentsFragment;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/perm/kate/DialogAttachmentsFragment$6$1;->this$1:Lcom/perm/kate/DialogAttachmentsFragment$6;

    iget-object v1, v1, Lcom/perm/kate/DialogAttachmentsFragment$6;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-static {v1}, Lcom/perm/kate/DialogAttachmentsFragment;->access$1000(Lcom/perm/kate/DialogAttachmentsFragment;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/perm/kate/DialogAttachmentsFragment$6$1;->this$1:Lcom/perm/kate/DialogAttachmentsFragment$6;

    iget-object v1, v1, Lcom/perm/kate/DialogAttachmentsFragment$6;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-static {v1}, Lcom/perm/kate/DialogAttachmentsFragment;->access$900(Lcom/perm/kate/DialogAttachmentsFragment;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/perm/kate/DialogAttachmentsFragment$6$1;->this$1:Lcom/perm/kate/DialogAttachmentsFragment$6;

    iget-object v1, v1, Lcom/perm/kate/DialogAttachmentsFragment$6;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-static {v1}, Lcom/perm/kate/DialogAttachmentsFragment;->access$700(Lcom/perm/kate/DialogAttachmentsFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 308
    iget-object v1, p0, Lcom/perm/kate/DialogAttachmentsFragment$6$1;->this$1:Lcom/perm/kate/DialogAttachmentsFragment$6;

    iget-object v1, v1, Lcom/perm/kate/DialogAttachmentsFragment$6;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-static {v1}, Lcom/perm/kate/DialogAttachmentsFragment;->access$500(Lcom/perm/kate/DialogAttachmentsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    .line 311
    .local v0, "messages_displayed":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Message;>;"
    :goto_1
    iget-object v1, p0, Lcom/perm/kate/DialogAttachmentsFragment$6$1;->this$1:Lcom/perm/kate/DialogAttachmentsFragment$6;

    iget-object v1, v1, Lcom/perm/kate/DialogAttachmentsFragment$6;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-static {v1}, Lcom/perm/kate/DialogAttachmentsFragment;->access$200(Lcom/perm/kate/DialogAttachmentsFragment;)Lcom/perm/kate/MessageAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/perm/kate/MessageAdapter;->displayNewData(Ljava/util/ArrayList;)V

    .line 314
    iget-object v1, p0, Lcom/perm/kate/DialogAttachmentsFragment$6$1;->this$1:Lcom/perm/kate/DialogAttachmentsFragment$6;

    iget-object v1, v1, Lcom/perm/kate/DialogAttachmentsFragment$6;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-static {v1}, Lcom/perm/kate/DialogAttachmentsFragment;->access$1000(Lcom/perm/kate/DialogAttachmentsFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 315
    iget-object v1, p0, Lcom/perm/kate/DialogAttachmentsFragment$6$1;->this$1:Lcom/perm/kate/DialogAttachmentsFragment$6;

    iget-object v1, v1, Lcom/perm/kate/DialogAttachmentsFragment$6;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-static {v1}, Lcom/perm/kate/DialogAttachmentsFragment;->access$1400(Lcom/perm/kate/DialogAttachmentsFragment;)V

    .line 317
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/DialogAttachmentsFragment$6$1;->this$1:Lcom/perm/kate/DialogAttachmentsFragment$6;

    iget-object v1, v1, Lcom/perm/kate/DialogAttachmentsFragment$6;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-static {v1}, Lcom/perm/kate/DialogAttachmentsFragment;->access$700(Lcom/perm/kate/DialogAttachmentsFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 318
    iget-object v1, p0, Lcom/perm/kate/DialogAttachmentsFragment$6$1;->this$1:Lcom/perm/kate/DialogAttachmentsFragment$6;

    iget-object v1, v1, Lcom/perm/kate/DialogAttachmentsFragment$6;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    invoke-static {v1}, Lcom/perm/kate/DialogAttachmentsFragment;->access$1500(Lcom/perm/kate/DialogAttachmentsFragment;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/DialogAttachmentsFragment$6$1;->val$messages_tmp:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 319
    :cond_1
    return-void

    .line 304
    .end local v0    # "messages_displayed":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Message;>;"
    :cond_2
    iget-object v1, p0, Lcom/perm/kate/DialogAttachmentsFragment$6$1;->this$1:Lcom/perm/kate/DialogAttachmentsFragment$6;

    iget-object v1, v1, Lcom/perm/kate/DialogAttachmentsFragment$6;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    iget-object v1, v1, Lcom/perm/kate/DialogAttachmentsFragment;->messages:Ljava/util/ArrayList;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/perm/kate/DialogAttachmentsFragment$6$1;->val$messages_tmp:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    goto :goto_0

    .line 310
    :cond_3
    iget-object v1, p0, Lcom/perm/kate/DialogAttachmentsFragment$6$1;->this$1:Lcom/perm/kate/DialogAttachmentsFragment$6;

    iget-object v1, v1, Lcom/perm/kate/DialogAttachmentsFragment$6;->this$0:Lcom/perm/kate/DialogAttachmentsFragment;

    iget-object v0, v1, Lcom/perm/kate/DialogAttachmentsFragment;->messages:Ljava/util/ArrayList;

    .restart local v0    # "messages_displayed":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Message;>;"
    goto :goto_1
.end method
