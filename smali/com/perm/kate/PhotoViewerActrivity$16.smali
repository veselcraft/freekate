.class Lcom/perm/kate/PhotoViewerActrivity$16;
.super Lcom/perm/kate/session/Callback;
.source "PhotoViewerActrivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/PhotoViewerActrivity;->deletePhotoTag(Lcom/perm/kate/api/PhotoTag;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PhotoViewerActrivity;

.field final synthetic val$pt:Lcom/perm/kate/api/PhotoTag;


# direct methods
.method constructor <init>(Lcom/perm/kate/PhotoViewerActrivity;Landroid/app/Activity;Lcom/perm/kate/api/PhotoTag;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/PhotoViewerActrivity;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 995
    iput-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity$16;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    iput-object p3, p0, Lcom/perm/kate/PhotoViewerActrivity$16;->val$pt:Lcom/perm/kate/api/PhotoTag;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 1016
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 1017
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 999
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity$16;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {v0}, Lcom/perm/kate/PhotoViewerActrivity;->access$1600(Lcom/perm/kate/PhotoViewerActrivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1000
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity$16;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {v0}, Lcom/perm/kate/PhotoViewerActrivity;->access$1600(Lcom/perm/kate/PhotoViewerActrivity;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity$16;->val$pt:Lcom/perm/kate/api/PhotoTag;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1001
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity$16;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {v0}, Lcom/perm/kate/PhotoViewerActrivity;->access$800(Lcom/perm/kate/PhotoViewerActrivity;)Lcom/perm/kate/api/Photo;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity$16;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {v1}, Lcom/perm/kate/PhotoViewerActrivity;->access$1600(Lcom/perm/kate/PhotoViewerActrivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Photo;->tags_count:Ljava/lang/Integer;

    .line 1003
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity$16;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-virtual {v0}, Lcom/perm/kate/PhotoViewerActrivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1013
    :goto_0
    return-void

    .line 1005
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity$16;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    new-instance v1, Lcom/perm/kate/PhotoViewerActrivity$16$1;

    invoke-direct {v1, p0}, Lcom/perm/kate/PhotoViewerActrivity$16$1;-><init>(Lcom/perm/kate/PhotoViewerActrivity$16;)V

    invoke-virtual {v0, v1}, Lcom/perm/kate/PhotoViewerActrivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
