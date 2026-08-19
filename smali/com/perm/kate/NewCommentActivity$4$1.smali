.class Lcom/perm/kate/NewCommentActivity$4$1;
.super Ljava/lang/Object;
.source "NewCommentActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/NewCommentActivity$4;->ready(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/NewCommentActivity$4;

.field final synthetic val$res:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/perm/kate/NewCommentActivity$4;Ljava/util/ArrayList;)V
    .locals 0

    .line 272
    iput-object p1, p0, Lcom/perm/kate/NewCommentActivity$4$1;->this$1:Lcom/perm/kate/NewCommentActivity$4;

    iput-object p2, p0, Lcom/perm/kate/NewCommentActivity$4$1;->val$res:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 275
    iget-object v0, p0, Lcom/perm/kate/NewCommentActivity$4$1;->this$1:Lcom/perm/kate/NewCommentActivity$4;

    iget-object v0, v0, Lcom/perm/kate/NewCommentActivity$4;->this$0:Lcom/perm/kate/NewCommentActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 277
    iget-object v0, p0, Lcom/perm/kate/NewCommentActivity$4$1;->val$res:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, -0x1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    .line 278
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 279
    iget-object v3, p0, Lcom/perm/kate/NewCommentActivity$4$1;->val$res:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/Serializable;

    const-string v3, "comment_id"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 280
    iget-object v1, p0, Lcom/perm/kate/NewCommentActivity$4$1;->val$res:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/Serializable;

    const-string v3, "parent_comment_id"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 281
    iget-object v1, p0, Lcom/perm/kate/NewCommentActivity$4$1;->this$1:Lcom/perm/kate/NewCommentActivity$4;

    iget-object v1, v1, Lcom/perm/kate/NewCommentActivity$4;->this$0:Lcom/perm/kate/NewCommentActivity;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/NewCommentActivity$4$1;->this$1:Lcom/perm/kate/NewCommentActivity$4;

    iget-object v0, v0, Lcom/perm/kate/NewCommentActivity$4;->this$0:Lcom/perm/kate/NewCommentActivity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setResult(I)V

    .line 284
    :goto_0
    iget-object v0, p0, Lcom/perm/kate/NewCommentActivity$4$1;->this$1:Lcom/perm/kate/NewCommentActivity$4;

    iget-object v0, v0, Lcom/perm/kate/NewCommentActivity$4;->this$0:Lcom/perm/kate/NewCommentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 285
    sget-object v0, Lcom/perm/kate/NewCommentActivity;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 286
    sget-object v0, Lcom/perm/kate/NewCommentActivity;->attachments_objects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
