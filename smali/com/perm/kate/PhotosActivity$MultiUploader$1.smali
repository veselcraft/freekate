.class Lcom/perm/kate/PhotosActivity$MultiUploader$1;
.super Ljava/lang/Object;
.source "PhotosActivity.java"

# interfaces
.implements Lcom/perm/kate/photoupload/UploadCallback;


# instance fields
.field final synthetic this$1:Lcom/perm/kate/PhotosActivity$MultiUploader;


# direct methods
.method constructor <init>(Lcom/perm/kate/PhotosActivity$MultiUploader;)V
    .locals 0

    .line 633
    iput-object p1, p0, Lcom/perm/kate/PhotosActivity$MultiUploader$1;->this$1:Lcom/perm/kate/PhotosActivity$MultiUploader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public success(Ljava/util/ArrayList;)V
    .locals 2

    .line 636
    iget-object v0, p0, Lcom/perm/kate/PhotosActivity$MultiUploader$1;->this$1:Lcom/perm/kate/PhotosActivity$MultiUploader;

    iget-object v0, v0, Lcom/perm/kate/PhotosActivity$MultiUploader;->this$0:Lcom/perm/kate/PhotosActivity;

    new-instance v1, Lcom/perm/kate/PhotosActivity$MultiUploader$1$1;

    invoke-direct {v1, p0, p1}, Lcom/perm/kate/PhotosActivity$MultiUploader$1$1;-><init>(Lcom/perm/kate/PhotosActivity$MultiUploader$1;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
