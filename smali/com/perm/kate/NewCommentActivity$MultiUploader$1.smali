.class Lcom/perm/kate/NewCommentActivity$MultiUploader$1;
.super Ljava/lang/Object;
.source "NewCommentActivity.java"

# interfaces
.implements Lcom/perm/kate/photoupload/UploadCallback;


# instance fields
.field final synthetic this$1:Lcom/perm/kate/NewCommentActivity$MultiUploader;


# direct methods
.method constructor <init>(Lcom/perm/kate/NewCommentActivity$MultiUploader;)V
    .locals 0

    .line 863
    iput-object p1, p0, Lcom/perm/kate/NewCommentActivity$MultiUploader$1;->this$1:Lcom/perm/kate/NewCommentActivity$MultiUploader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public success(Ljava/util/ArrayList;)V
    .locals 2

    .line 866
    iget-object v0, p0, Lcom/perm/kate/NewCommentActivity$MultiUploader$1;->this$1:Lcom/perm/kate/NewCommentActivity$MultiUploader;

    iget-object v0, v0, Lcom/perm/kate/NewCommentActivity$MultiUploader;->this$0:Lcom/perm/kate/NewCommentActivity;

    new-instance v1, Lcom/perm/kate/NewCommentActivity$MultiUploader$1$1;

    invoke-direct {v1, p0, p1}, Lcom/perm/kate/NewCommentActivity$MultiUploader$1$1;-><init>(Lcom/perm/kate/NewCommentActivity$MultiUploader$1;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
