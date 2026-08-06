.class Lcom/perm/kate/AttachmentsHelper$12;
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
    .line 1025
    iput-object p1, p0, Lcom/perm/kate/AttachmentsHelper$12;->this$0:Lcom/perm/kate/AttachmentsHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1029
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Attachment;

    .line 1035
    .local v0, "attachment":Lcom/perm/kate/api/Attachment;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "http://vk.com/wall"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/perm/kate/api/Attachment;->comment:Lcom/perm/kate/api/Comment;

    iget-object v5, v5, Lcom/perm/kate/api/Comment;->post:Lcom/perm/kate/api/WallMessage;

    iget-wide v6, v5, Lcom/perm/kate/api/WallMessage;->to_id:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/perm/kate/api/Attachment;->comment:Lcom/perm/kate/api/Comment;

    iget-object v5, v5, Lcom/perm/kate/api/Comment;->post:Lcom/perm/kate/api/WallMessage;

    iget-wide v6, v5, Lcom/perm/kate/api/WallMessage;->id:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "?reply="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/perm/kate/api/Attachment;->comment:Lcom/perm/kate/api/Comment;

    iget-wide v6, v5, Lcom/perm/kate/api/Comment;->cid:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1037
    .local v3, "url":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    iget-object v4, p0, Lcom/perm/kate/AttachmentsHelper$12;->this$0:Lcom/perm/kate/AttachmentsHelper;

    iget-object v4, v4, Lcom/perm/kate/AttachmentsHelper;->activity:Lcom/perm/kate/BaseActivity;

    const-class v5, Lcom/perm/kate/WebActivity;

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1038
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "com.perm.kate.title"

    iget-object v5, p0, Lcom/perm/kate/AttachmentsHelper$12;->this$0:Lcom/perm/kate/AttachmentsHelper;

    iget-object v5, v5, Lcom/perm/kate/AttachmentsHelper;->activity:Lcom/perm/kate/BaseActivity;

    const v6, 0x7f07044b

    invoke-virtual {v5, v6}, Lcom/perm/kate/BaseActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1039
    const-string v4, "com.perm.kate.url"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1040
    iget-object v4, p0, Lcom/perm/kate/AttachmentsHelper$12;->this$0:Lcom/perm/kate/AttachmentsHelper;

    iget-object v4, v4, Lcom/perm/kate/AttachmentsHelper;->activity:Lcom/perm/kate/BaseActivity;

    invoke-virtual {v4, v1}, Lcom/perm/kate/BaseActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1048
    .end local v0    # "attachment":Lcom/perm/kate/api/Attachment;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v3    # "url":Ljava/lang/String;
    :goto_0
    return-void

    .line 1044
    :catch_0
    move-exception v2

    .line 1045
    .local v2, "th":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1046
    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method
