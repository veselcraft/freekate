.class Lcom/perm/kate/AttachmentsHelper$13;
.super Ljava/lang/Object;
.source "AttachmentsHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/AttachmentsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AttachmentsHelper;


# direct methods
.method constructor <init>(Lcom/perm/kate/AttachmentsHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/AttachmentsHelper;

    .prologue
    .line 1051
    iput-object p1, p0, Lcom/perm/kate/AttachmentsHelper$13;->this$0:Lcom/perm/kate/AttachmentsHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1055
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    iget-object v4, p0, Lcom/perm/kate/AttachmentsHelper$13;->this$0:Lcom/perm/kate/AttachmentsHelper;

    iget-object v4, v4, Lcom/perm/kate/AttachmentsHelper;->activity:Lcom/perm/kate/BaseActivity;

    const-class v5, Lcom/perm/kate/ForwardedMessagesActivity;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1060
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1063
    .local v0, "attachment_messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Attachment;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/perm/kate/api/Attachment;

    iget-object v4, v4, Lcom/perm/kate/api/Attachment;->message:Lcom/perm/kate/api/Message;

    if-nez v4, :cond_0

    .line 1065
    iget-object v4, p0, Lcom/perm/kate/AttachmentsHelper$13;->this$0:Lcom/perm/kate/AttachmentsHelper;

    invoke-static {v4, v0}, Lcom/perm/kate/AttachmentsHelper;->access$000(Lcom/perm/kate/AttachmentsHelper;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1070
    .local v2, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Message;>;"
    :goto_0
    const-string v4, "messages"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1071
    iget-object v4, p0, Lcom/perm/kate/AttachmentsHelper$13;->this$0:Lcom/perm/kate/AttachmentsHelper;

    iget-object v4, v4, Lcom/perm/kate/AttachmentsHelper;->activity:Lcom/perm/kate/BaseActivity;

    invoke-virtual {v4, v1}, Lcom/perm/kate/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 1076
    .end local v0    # "attachment_messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Attachment;>;"
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Message;>;"
    :goto_1
    return-void

    .line 1068
    .restart local v0    # "attachment_messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Attachment;>;"
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_0
    iget-object v4, p0, Lcom/perm/kate/AttachmentsHelper$13;->this$0:Lcom/perm/kate/AttachmentsHelper;

    invoke-static {v4, v0}, Lcom/perm/kate/AttachmentsHelper;->access$100(Lcom/perm/kate/AttachmentsHelper;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .restart local v2    # "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Message;>;"
    goto :goto_0

    .line 1072
    .end local v0    # "attachment_messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Attachment;>;"
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Message;>;"
    :catch_0
    move-exception v3

    .line 1073
    .local v3, "th":Ljava/lang/Throwable;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1074
    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_1
.end method
