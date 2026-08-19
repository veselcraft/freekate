.class Lcom/perm/kate/NewCommentActivity$MultiUploader$1$1;
.super Ljava/lang/Object;
.source "NewCommentActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$2:Lcom/perm/kate/NewCommentActivity$MultiUploader$1;

.field final synthetic val$new_photos:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/perm/kate/NewCommentActivity$MultiUploader$1;Ljava/util/ArrayList;)V
    .locals 0

    .line 866
    iput-object p1, p0, Lcom/perm/kate/NewCommentActivity$MultiUploader$1$1;->this$2:Lcom/perm/kate/NewCommentActivity$MultiUploader$1;

    iput-object p2, p0, Lcom/perm/kate/NewCommentActivity$MultiUploader$1$1;->val$new_photos:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 869
    iget-object v0, p0, Lcom/perm/kate/NewCommentActivity$MultiUploader$1$1;->this$2:Lcom/perm/kate/NewCommentActivity$MultiUploader$1;

    iget-object v0, v0, Lcom/perm/kate/NewCommentActivity$MultiUploader$1;->this$1:Lcom/perm/kate/NewCommentActivity$MultiUploader;

    iget-object v0, v0, Lcom/perm/kate/NewCommentActivity$MultiUploader;->this$0:Lcom/perm/kate/NewCommentActivity;

    iget-object v1, p0, Lcom/perm/kate/NewCommentActivity$MultiUploader$1$1;->val$new_photos:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/perm/kate/NewCommentActivity;->access$2200(Lcom/perm/kate/NewCommentActivity;Ljava/util/ArrayList;)V

    .line 870
    iget-object v0, p0, Lcom/perm/kate/NewCommentActivity$MultiUploader$1$1;->this$2:Lcom/perm/kate/NewCommentActivity$MultiUploader$1;

    iget-object v0, v0, Lcom/perm/kate/NewCommentActivity$MultiUploader$1;->this$1:Lcom/perm/kate/NewCommentActivity$MultiUploader;

    invoke-static {v0}, Lcom/perm/kate/NewCommentActivity$MultiUploader;->access$3100(Lcom/perm/kate/NewCommentActivity$MultiUploader;)V

    return-void
.end method
