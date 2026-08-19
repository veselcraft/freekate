.class Lcom/perm/kate/AttachmentsHelper$12;
.super Ljava/lang/Object;
.source "AttachmentsHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AttachmentsHelper;


# direct methods
.method constructor <init>(Lcom/perm/kate/AttachmentsHelper;)V
    .locals 0

    .line 1257
    iput-object p1, p0, Lcom/perm/kate/AttachmentsHelper$12;->this$0:Lcom/perm/kate/AttachmentsHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1261
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/api/Attachment;

    .line 1268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://vk.com/wall"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/perm/kate/api/Attachment;->comment:Lcom/perm/kate/api/Comment;

    iget-object v1, v1, Lcom/perm/kate/api/Comment;->post:Lcom/perm/kate/api/WallMessage;

    iget-wide v1, v1, Lcom/perm/kate/api/WallMessage;->to_id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/perm/kate/api/Attachment;->comment:Lcom/perm/kate/api/Comment;

    iget-object v1, v1, Lcom/perm/kate/api/Comment;->post:Lcom/perm/kate/api/WallMessage;

    iget-wide v1, v1, Lcom/perm/kate/api/WallMessage;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "?reply="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/perm/kate/api/Attachment;->comment:Lcom/perm/kate/api/Comment;

    iget-wide v1, p1, Lcom/perm/kate/api/Comment;->cid:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1270
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/perm/kate/AttachmentsHelper$12;->this$0:Lcom/perm/kate/AttachmentsHelper;

    iget-object v1, v1, Lcom/perm/kate/AttachmentsHelper;->activity:Lcom/perm/kate/BaseActivity;

    const-class v2, Lcom/perm/kate/WebActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.perm.kate.title"

    .line 1271
    iget-object v2, p0, Lcom/perm/kate/AttachmentsHelper$12;->this$0:Lcom/perm/kate/AttachmentsHelper;

    iget-object v2, v2, Lcom/perm/kate/AttachmentsHelper;->activity:Lcom/perm/kate/BaseActivity;

    const v3, 0x7f0f04dd

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.perm.kate.url"

    .line 1272
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1273
    iget-object p1, p0, Lcom/perm/kate/AttachmentsHelper$12;->this$0:Lcom/perm/kate/AttachmentsHelper;

    iget-object p1, p1, Lcom/perm/kate/AttachmentsHelper;->activity:Lcom/perm/kate/BaseActivity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1278
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    .line 1279
    invoke-static {p1, v0}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
