.class Lcom/perm/kate/NewCommentActivity$3$1;
.super Ljava/lang/Object;
.source "NewCommentActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/NewCommentActivity$3;->ready(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/NewCommentActivity$3;


# direct methods
.method constructor <init>(Lcom/perm/kate/NewCommentActivity$3;)V
    .locals 0

    .line 240
    iput-object p1, p0, Lcom/perm/kate/NewCommentActivity$3$1;->this$1:Lcom/perm/kate/NewCommentActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 243
    iget-object v0, p0, Lcom/perm/kate/NewCommentActivity$3$1;->this$1:Lcom/perm/kate/NewCommentActivity$3;

    iget-object v0, v0, Lcom/perm/kate/NewCommentActivity$3;->this$0:Lcom/perm/kate/NewCommentActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 244
    iget-object v0, p0, Lcom/perm/kate/NewCommentActivity$3$1;->this$1:Lcom/perm/kate/NewCommentActivity$3;

    iget-object v0, v0, Lcom/perm/kate/NewCommentActivity$3;->this$0:Lcom/perm/kate/NewCommentActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 245
    iget-object v0, p0, Lcom/perm/kate/NewCommentActivity$3$1;->this$1:Lcom/perm/kate/NewCommentActivity$3;

    iget-object v0, v0, Lcom/perm/kate/NewCommentActivity$3;->this$0:Lcom/perm/kate/NewCommentActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 246
    sget-object v0, Lcom/perm/kate/NewCommentActivity;->attachments:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 247
    sget-object v0, Lcom/perm/kate/NewCommentActivity;->attachments_objects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
