.class Lcom/perm/kate/VideoAlbumsActivity$6;
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
    .line 168
    iput-object p1, p0, Lcom/perm/kate/VideoAlbumsActivity$6;->this$0:Lcom/perm/kate/VideoAlbumsActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 190
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 191
    iget-object v0, p0, Lcom/perm/kate/VideoAlbumsActivity$6;->this$0:Lcom/perm/kate/VideoAlbumsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/VideoAlbumsActivity;->showProgressBar(Z)V

    .line 192
    iget-object v0, p0, Lcom/perm/kate/VideoAlbumsActivity$6;->this$0:Lcom/perm/kate/VideoAlbumsActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/perm/kate/VideoAlbumsActivity;->access$502(Lcom/perm/kate/VideoAlbumsActivity;I)I

    .line 193
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 4
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 172
    move-object v0, p1

    check-cast v0, Ljava/util/ArrayList;

    .line 173
    .local v0, "albums":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/AudioAlbum;>;"
    iget-object v2, p0, Lcom/perm/kate/VideoAlbumsActivity$6;->this$0:Lcom/perm/kate/VideoAlbumsActivity;

    invoke-static {v2}, Lcom/perm/kate/VideoAlbumsActivity;->access$200(Lcom/perm/kate/VideoAlbumsActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 174
    iget-object v2, p0, Lcom/perm/kate/VideoAlbumsActivity$6;->this$0:Lcom/perm/kate/VideoAlbumsActivity;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/perm/kate/VideoAlbumsActivity;->showProgressBar(Z)V

    .line 175
    iget-object v2, p0, Lcom/perm/kate/VideoAlbumsActivity$6;->this$0:Lcom/perm/kate/VideoAlbumsActivity;

    iget-object v3, p0, Lcom/perm/kate/VideoAlbumsActivity$6;->this$0:Lcom/perm/kate/VideoAlbumsActivity;

    invoke-static {v3}, Lcom/perm/kate/VideoAlbumsActivity;->access$200(Lcom/perm/kate/VideoAlbumsActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/perm/kate/VideoAlbumsActivity;->access$300(Lcom/perm/kate/VideoAlbumsActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    .line 176
    .local v1, "complete_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/AudioAlbum;>;"
    iget-object v2, p0, Lcom/perm/kate/VideoAlbumsActivity$6;->this$0:Lcom/perm/kate/VideoAlbumsActivity;

    new-instance v3, Lcom/perm/kate/VideoAlbumsActivity$6$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/perm/kate/VideoAlbumsActivity$6$1;-><init>(Lcom/perm/kate/VideoAlbumsActivity$6;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Lcom/perm/kate/VideoAlbumsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 186
    return-void
.end method
