.class Lcom/perm/kate/AttachmentsHelper$11;
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
    .line 1001
    iput-object p1, p0, Lcom/perm/kate/AttachmentsHelper$11;->this$0:Lcom/perm/kate/AttachmentsHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1005
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/perm/kate/AttachmentsHelper$11;->this$0:Lcom/perm/kate/AttachmentsHelper;

    iget-object v3, v3, Lcom/perm/kate/AttachmentsHelper;->activity:Lcom/perm/kate/BaseActivity;

    const-class v4, Lcom/perm/kate/WallMessageActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1006
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Attachment;

    .line 1007
    .local v0, "attachment":Lcom/perm/kate/api/Attachment;
    iget-wide v4, v0, Lcom/perm/kate/api/Attachment;->id:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_1

    .line 1009
    const-string v3, "attachment_id"

    iget-wide v4, v0, Lcom/perm/kate/api/Attachment;->id:J

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1017
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/perm/kate/AttachmentsHelper$11;->this$0:Lcom/perm/kate/AttachmentsHelper;

    iget-object v3, v3, Lcom/perm/kate/AttachmentsHelper;->activity:Lcom/perm/kate/BaseActivity;

    invoke-virtual {v3, v1}, Lcom/perm/kate/BaseActivity;->startActivity(Landroid/content/Intent;)V

    .line 1022
    .end local v0    # "attachment":Lcom/perm/kate/api/Attachment;
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_1
    return-void

    .line 1010
    .restart local v0    # "attachment":Lcom/perm/kate/api/Attachment;
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_1
    iget-object v3, v0, Lcom/perm/kate/api/Attachment;->wallMessage:Lcom/perm/kate/api/WallMessage;

    if-eqz v3, :cond_0

    .line 1014
    const-string v3, "post_id"

    iget-object v4, v0, Lcom/perm/kate/api/Attachment;->wallMessage:Lcom/perm/kate/api/WallMessage;

    iget-wide v4, v4, Lcom/perm/kate/api/WallMessage;->id:J

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1015
    const-string v3, "owner_id"

    iget-object v4, v0, Lcom/perm/kate/api/Attachment;->wallMessage:Lcom/perm/kate/api/WallMessage;

    iget-wide v4, v4, Lcom/perm/kate/api/WallMessage;->to_id:J

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1018
    .end local v0    # "attachment":Lcom/perm/kate/api/Attachment;
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v2

    .line 1019
    .local v2, "th":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1020
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_1
.end method
