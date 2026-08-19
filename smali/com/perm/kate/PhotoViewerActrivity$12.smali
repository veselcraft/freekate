.class Lcom/perm/kate/PhotoViewerActrivity$12;
.super Lcom/perm/kate/session/Callback;
.source "PhotoViewerActrivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/PhotoViewerActrivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PhotoViewerActrivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/PhotoViewerActrivity;Landroid/app/Activity;)V
    .locals 0

    .line 942
    iput-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity$12;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 958
    iget-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity$12;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    new-instance v0, Lcom/perm/kate/PhotoViewerActrivity$12$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/PhotoViewerActrivity$12$1;-><init>(Lcom/perm/kate/PhotoViewerActrivity$12;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 5

    if-eqz p1, :cond_1

    .line 947
    check-cast p1, Ljava/util/ArrayList;

    .line 948
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity$12;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {v0}, Lcom/perm/kate/PhotoViewerActrivity;->access$000(Lcom/perm/kate/PhotoViewerActrivity;)Lcom/perm/kate/api/Photo;

    move-result-object v0

    iget-wide v0, v0, Lcom/perm/kate/api/Photo;->pid:J

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/PhotoTag;

    iget-wide v2, v2, Lcom/perm/kate/api/PhotoTag;->pid:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 949
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity$12;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {v0, p1}, Lcom/perm/kate/PhotoViewerActrivity;->access$1802(Lcom/perm/kate/PhotoViewerActrivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    goto :goto_0

    .line 951
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity$12;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/perm/kate/PhotoViewerActrivity;->access$1802(Lcom/perm/kate/PhotoViewerActrivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 953
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity$12;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {p1}, Lcom/perm/kate/PhotoViewerActrivity;->access$1900(Lcom/perm/kate/PhotoViewerActrivity;)V

    return-void
.end method
