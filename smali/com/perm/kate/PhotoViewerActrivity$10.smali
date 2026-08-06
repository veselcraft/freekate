.class Lcom/perm/kate/PhotoViewerActrivity$10;
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
    .param p1, "this$0"    # Lcom/perm/kate/PhotoViewerActrivity;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 816
    iput-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity$10;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 832
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity$10;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    new-instance v1, Lcom/perm/kate/PhotoViewerActrivity$10$1;

    invoke-direct {v1, p0}, Lcom/perm/kate/PhotoViewerActrivity$10$1;-><init>(Lcom/perm/kate/PhotoViewerActrivity$10;)V

    invoke-virtual {v0, v1}, Lcom/perm/kate/PhotoViewerActrivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 839
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 6
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 820
    if-eqz p1, :cond_0

    move-object v0, p1

    .line 821
    check-cast v0, Ljava/util/ArrayList;

    .line 822
    .local v0, "tt":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/PhotoTag;>;"
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity$10;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {v1}, Lcom/perm/kate/PhotoViewerActrivity;->access$800(Lcom/perm/kate/PhotoViewerActrivity;)Lcom/perm/kate/api/Photo;

    move-result-object v1

    iget-wide v2, v1, Lcom/perm/kate/api/Photo;->pid:J

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/PhotoTag;

    iget-wide v4, v1, Lcom/perm/kate/api/PhotoTag;->pid:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 823
    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity$10;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    check-cast p1, Ljava/util/ArrayList;

    .end local p1    # "data":Ljava/lang/Object;
    invoke-static {v1, p1}, Lcom/perm/kate/PhotoViewerActrivity;->access$1602(Lcom/perm/kate/PhotoViewerActrivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 827
    .end local v0    # "tt":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/PhotoTag;>;"
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity$10;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {v1}, Lcom/perm/kate/PhotoViewerActrivity;->access$1700(Lcom/perm/kate/PhotoViewerActrivity;)V

    .line 828
    return-void

    .line 825
    .restart local v0    # "tt":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/PhotoTag;>;"
    .restart local p1    # "data":Ljava/lang/Object;
    :cond_1
    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity$10;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/perm/kate/PhotoViewerActrivity;->access$1602(Lcom/perm/kate/PhotoViewerActrivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    goto :goto_0
.end method
