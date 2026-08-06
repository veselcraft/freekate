.class Lcom/perm/kate/VideoAlbumsActivity$2;
.super Lcom/perm/kate/session/Callback;
.source "VideoAlbumsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/VideoAlbumsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/VideoAlbumsActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/VideoAlbumsActivity;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/VideoAlbumsActivity;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/perm/kate/VideoAlbumsActivity$2;->this$0:Lcom/perm/kate/VideoAlbumsActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 123
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 124
    iget-object v0, p0, Lcom/perm/kate/VideoAlbumsActivity$2;->this$0:Lcom/perm/kate/VideoAlbumsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/VideoAlbumsActivity;->showProgressBar(Z)V

    .line 125
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 107
    iget-object v1, p0, Lcom/perm/kate/VideoAlbumsActivity$2;->this$0:Lcom/perm/kate/VideoAlbumsActivity;

    check-cast p1, Ljava/util/ArrayList;

    .end local p1    # "data":Ljava/lang/Object;
    invoke-static {v1, p1}, Lcom/perm/kate/VideoAlbumsActivity;->access$202(Lcom/perm/kate/VideoAlbumsActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 108
    iget-object v1, p0, Lcom/perm/kate/VideoAlbumsActivity$2;->this$0:Lcom/perm/kate/VideoAlbumsActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/perm/kate/VideoAlbumsActivity;->showProgressBar(Z)V

    .line 109
    iget-object v1, p0, Lcom/perm/kate/VideoAlbumsActivity$2;->this$0:Lcom/perm/kate/VideoAlbumsActivity;

    iget-object v2, p0, Lcom/perm/kate/VideoAlbumsActivity$2;->this$0:Lcom/perm/kate/VideoAlbumsActivity;

    invoke-static {v2}, Lcom/perm/kate/VideoAlbumsActivity;->access$200(Lcom/perm/kate/VideoAlbumsActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/perm/kate/VideoAlbumsActivity;->access$300(Lcom/perm/kate/VideoAlbumsActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 110
    .local v0, "complete_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/AudioAlbum;>;"
    iget-object v1, p0, Lcom/perm/kate/VideoAlbumsActivity$2;->this$0:Lcom/perm/kate/VideoAlbumsActivity;

    new-instance v2, Lcom/perm/kate/VideoAlbumsActivity$2$1;

    invoke-direct {v2, p0, v0}, Lcom/perm/kate/VideoAlbumsActivity$2$1;-><init>(Lcom/perm/kate/VideoAlbumsActivity$2;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Lcom/perm/kate/VideoAlbumsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 119
    return-void
.end method
