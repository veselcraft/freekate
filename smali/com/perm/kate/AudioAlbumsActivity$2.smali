.class Lcom/perm/kate/AudioAlbumsActivity$2;
.super Lcom/perm/kate/session/Callback;
.source "AudioAlbumsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/AudioAlbumsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AudioAlbumsActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/AudioAlbumsActivity;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/AudioAlbumsActivity;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/perm/kate/AudioAlbumsActivity$2;->this$0:Lcom/perm/kate/AudioAlbumsActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 135
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 136
    iget-object v0, p0, Lcom/perm/kate/AudioAlbumsActivity$2;->this$0:Lcom/perm/kate/AudioAlbumsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/AudioAlbumsActivity;->showProgressBar(Z)V

    .line 137
    iget-object v0, p0, Lcom/perm/kate/AudioAlbumsActivity$2;->this$0:Lcom/perm/kate/AudioAlbumsActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/perm/kate/AudioAlbumsActivity;->access$602(Lcom/perm/kate/AudioAlbumsActivity;I)I

    .line 138
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 4
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 116
    iget-object v1, p0, Lcom/perm/kate/AudioAlbumsActivity$2;->this$0:Lcom/perm/kate/AudioAlbumsActivity;

    check-cast p1, Ljava/util/ArrayList;

    .end local p1    # "data":Ljava/lang/Object;
    invoke-static {v1, p1}, Lcom/perm/kate/AudioAlbumsActivity;->access$302(Lcom/perm/kate/AudioAlbumsActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 117
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v2, p0, Lcom/perm/kate/AudioAlbumsActivity$2;->this$0:Lcom/perm/kate/AudioAlbumsActivity;

    invoke-static {v2}, Lcom/perm/kate/AudioAlbumsActivity;->access$000(Lcom/perm/kate/AudioAlbumsActivity;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/perm/kate/db/DataHelper;->deleteAudioAlbums(J)Z

    .line 118
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v2, p0, Lcom/perm/kate/AudioAlbumsActivity$2;->this$0:Lcom/perm/kate/AudioAlbumsActivity;

    invoke-static {v2}, Lcom/perm/kate/AudioAlbumsActivity;->access$300(Lcom/perm/kate/AudioAlbumsActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/perm/kate/db/DataHelper;->createAudioAlbums(Ljava/util/ArrayList;)V

    .line 119
    iget-object v1, p0, Lcom/perm/kate/AudioAlbumsActivity$2;->this$0:Lcom/perm/kate/AudioAlbumsActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/perm/kate/AudioAlbumsActivity;->showProgressBar(Z)V

    .line 120
    iget-object v1, p0, Lcom/perm/kate/AudioAlbumsActivity$2;->this$0:Lcom/perm/kate/AudioAlbumsActivity;

    iget-object v2, p0, Lcom/perm/kate/AudioAlbumsActivity$2;->this$0:Lcom/perm/kate/AudioAlbumsActivity;

    invoke-static {v2}, Lcom/perm/kate/AudioAlbumsActivity;->access$300(Lcom/perm/kate/AudioAlbumsActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/perm/kate/AudioAlbumsActivity;->access$400(Lcom/perm/kate/AudioAlbumsActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 121
    .local v0, "complete_list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/AudioAlbum;>;"
    iget-object v1, p0, Lcom/perm/kate/AudioAlbumsActivity$2;->this$0:Lcom/perm/kate/AudioAlbumsActivity;

    new-instance v2, Lcom/perm/kate/AudioAlbumsActivity$2$1;

    invoke-direct {v2, p0, v0}, Lcom/perm/kate/AudioAlbumsActivity$2$1;-><init>(Lcom/perm/kate/AudioAlbumsActivity$2;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Lcom/perm/kate/AudioAlbumsActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 131
    return-void
.end method
