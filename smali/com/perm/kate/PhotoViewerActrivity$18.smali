.class Lcom/perm/kate/PhotoViewerActrivity$18;
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

    .line 1125
    iput-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity$18;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    iput-object p3, p0, Lcom/perm/kate/PhotoViewerActrivity$18;->val$pt:Lcom/perm/kate/api/PhotoTag;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 0

    .line 1145
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 1

    .line 1128
    iget-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity$18;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {p1}, Lcom/perm/kate/PhotoViewerActrivity;->access$1800(Lcom/perm/kate/PhotoViewerActrivity;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1129
    iget-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity$18;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {p1}, Lcom/perm/kate/PhotoViewerActrivity;->access$1800(Lcom/perm/kate/PhotoViewerActrivity;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity$18;->val$pt:Lcom/perm/kate/api/PhotoTag;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1130
    iget-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity$18;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {p1}, Lcom/perm/kate/PhotoViewerActrivity;->access$000(Lcom/perm/kate/PhotoViewerActrivity;)Lcom/perm/kate/api/Photo;

    move-result-object p1

    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity$18;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {v0}, Lcom/perm/kate/PhotoViewerActrivity;->access$1800(Lcom/perm/kate/PhotoViewerActrivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/perm/kate/api/Photo;->tags_count:Ljava/lang/Integer;

    .line 1132
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity$18;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 1134
    :cond_1
    iget-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity$18;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    new-instance v0, Lcom/perm/kate/PhotoViewerActrivity$18$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/PhotoViewerActrivity$18$1;-><init>(Lcom/perm/kate/PhotoViewerActrivity$18;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
