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


# direct methods
.method constructor <init>(Lcom/perm/kate/NewCommentActivity$4;)V
    .locals 0
    .param p1, "this$1"    # Lcom/perm/kate/NewCommentActivity$4;

    .prologue
    .line 256
    iput-object p1, p0, Lcom/perm/kate/NewCommentActivity$4$1;->this$1:Lcom/perm/kate/NewCommentActivity$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 259
    iget-object v0, p0, Lcom/perm/kate/NewCommentActivity$4$1;->this$1:Lcom/perm/kate/NewCommentActivity$4;

    iget-object v0, v0, Lcom/perm/kate/NewCommentActivity$4;->this$0:Lcom/perm/kate/NewCommentActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/NewCommentActivity;->showProgressBar(Z)V

    .line 260
    iget-object v0, p0, Lcom/perm/kate/NewCommentActivity$4$1;->this$1:Lcom/perm/kate/NewCommentActivity$4;

    iget-object v0, v0, Lcom/perm/kate/NewCommentActivity$4;->this$0:Lcom/perm/kate/NewCommentActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/perm/kate/NewCommentActivity;->setResult(I)V

    .line 261
    iget-object v0, p0, Lcom/perm/kate/NewCommentActivity$4$1;->this$1:Lcom/perm/kate/NewCommentActivity$4;

    iget-object v0, v0, Lcom/perm/kate/NewCommentActivity$4;->this$0:Lcom/perm/kate/NewCommentActivity;

    invoke-virtual {v0}, Lcom/perm/kate/NewCommentActivity;->finish()V

    .line 262
    sget-object v0, Lcom/perm/kate/NewCommentActivity;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 263
    sget-object v0, Lcom/perm/kate/NewCommentActivity;->attachments_objects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 264
    return-void
.end method
