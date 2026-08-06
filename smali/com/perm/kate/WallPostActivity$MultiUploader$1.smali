.class Lcom/perm/kate/WallPostActivity$MultiUploader$1;
.super Ljava/lang/Object;
.source "WallPostActivity.java"

# interfaces
.implements Lcom/perm/kate/photoupload/UploadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/WallPostActivity$MultiUploader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/WallPostActivity$MultiUploader;


# direct methods
.method constructor <init>(Lcom/perm/kate/WallPostActivity$MultiUploader;)V
    .locals 0
    .param p1, "this$1"    # Lcom/perm/kate/WallPostActivity$MultiUploader;

    .prologue
    .line 1130
    iput-object p1, p0, Lcom/perm/kate/WallPostActivity$MultiUploader$1;->this$1:Lcom/perm/kate/WallPostActivity$MultiUploader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public success(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/Photo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1133
    .local p1, "new_photos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Photo;>;"
    iget-object v0, p0, Lcom/perm/kate/WallPostActivity$MultiUploader$1;->this$1:Lcom/perm/kate/WallPostActivity$MultiUploader;

    iget-object v0, v0, Lcom/perm/kate/WallPostActivity$MultiUploader;->this$0:Lcom/perm/kate/WallPostActivity;

    new-instance v1, Lcom/perm/kate/WallPostActivity$MultiUploader$1$1;

    invoke-direct {v1, p0, p1}, Lcom/perm/kate/WallPostActivity$MultiUploader$1$1;-><init>(Lcom/perm/kate/WallPostActivity$MultiUploader$1;Ljava/util/ArrayList;)V

    invoke-virtual {v0, v1}, Lcom/perm/kate/WallPostActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1139
    return-void
.end method
