.class Lcom/perm/kate/WallPostActivity$MultiUploader$1;
.super Ljava/lang/Object;
.source "WallPostActivity.java"

# interfaces
.implements Lcom/perm/kate/photoupload/UploadCallback;


# instance fields
.field final synthetic this$1:Lcom/perm/kate/WallPostActivity$MultiUploader;


# direct methods
.method constructor <init>(Lcom/perm/kate/WallPostActivity$MultiUploader;)V
    .locals 0

    .line 1158
    iput-object p1, p0, Lcom/perm/kate/WallPostActivity$MultiUploader$1;->this$1:Lcom/perm/kate/WallPostActivity$MultiUploader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public success(Ljava/util/ArrayList;)V
    .locals 2

    .line 1161
    iget-object v0, p0, Lcom/perm/kate/WallPostActivity$MultiUploader$1;->this$1:Lcom/perm/kate/WallPostActivity$MultiUploader;

    iget-object v0, v0, Lcom/perm/kate/WallPostActivity$MultiUploader;->this$0:Lcom/perm/kate/WallPostActivity;

    new-instance v1, Lcom/perm/kate/WallPostActivity$MultiUploader$1$1;

    invoke-direct {v1, p0, p1}, Lcom/perm/kate/WallPostActivity$MultiUploader$1$1;-><init>(Lcom/perm/kate/WallPostActivity$MultiUploader$1;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
