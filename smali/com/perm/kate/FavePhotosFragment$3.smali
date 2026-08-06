.class Lcom/perm/kate/FavePhotosFragment$3;
.super Lcom/perm/kate/session/Callback;
.source "FavePhotosFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/FavePhotosFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FavePhotosFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/FavePhotosFragment;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/FavePhotosFragment;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/perm/kate/FavePhotosFragment$3;->this$0:Lcom/perm/kate/FavePhotosFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 109
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 110
    iget-object v0, p0, Lcom/perm/kate/FavePhotosFragment$3;->this$0:Lcom/perm/kate/FavePhotosFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/FavePhotosFragment;->showProgressBar(Z)V

    .line 111
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 6
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 96
    move-object v1, p1

    check-cast v1, Ljava/util/ArrayList;

    .line 97
    .local v1, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Photo;>;"
    if-eqz v1, :cond_0

    .line 98
    iget-object v0, p0, Lcom/perm/kate/FavePhotosFragment$3;->this$0:Lcom/perm/kate/FavePhotosFragment;

    invoke-static {v0, v1}, Lcom/perm/kate/FavePhotosFragment;->access$302(Lcom/perm/kate/FavePhotosFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 99
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v2, p0, Lcom/perm/kate/FavePhotosFragment$3;->this$0:Lcom/perm/kate/FavePhotosFragment;

    iget-wide v2, v2, Lcom/perm/kate/FavePhotosFragment;->album_id:J

    iget-object v4, p0, Lcom/perm/kate/FavePhotosFragment$3;->this$0:Lcom/perm/kate/FavePhotosFragment;

    iget-wide v4, v4, Lcom/perm/kate/FavePhotosFragment;->album_owner_id:J

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/perm/kate/db/DataHelper;->deleteAlbumPhotos(JJ)Z

    .line 100
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v2, p0, Lcom/perm/kate/FavePhotosFragment$3;->this$0:Lcom/perm/kate/FavePhotosFragment;

    invoke-static {v2}, Lcom/perm/kate/FavePhotosFragment;->access$400(Lcom/perm/kate/FavePhotosFragment;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/perm/kate/db/DataHelper;->createOrUpdatePhotos(Ljava/util/ArrayList;J)V

    .line 101
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v2, p0, Lcom/perm/kate/FavePhotosFragment$3;->this$0:Lcom/perm/kate/FavePhotosFragment;

    iget-wide v2, v2, Lcom/perm/kate/FavePhotosFragment;->album_id:J

    iget-object v4, p0, Lcom/perm/kate/FavePhotosFragment$3;->this$0:Lcom/perm/kate/FavePhotosFragment;

    iget-wide v4, v4, Lcom/perm/kate/FavePhotosFragment;->album_owner_id:J

    invoke-virtual/range {v0 .. v5}, Lcom/perm/kate/db/DataHelper;->createAlbumPhotos(Ljava/util/ArrayList;JJ)V

    .line 102
    iget-object v0, p0, Lcom/perm/kate/FavePhotosFragment$3;->this$0:Lcom/perm/kate/FavePhotosFragment;

    invoke-static {v0}, Lcom/perm/kate/FavePhotosFragment;->access$500(Lcom/perm/kate/FavePhotosFragment;)V

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/FavePhotosFragment$3;->this$0:Lcom/perm/kate/FavePhotosFragment;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/perm/kate/FavePhotosFragment;->showProgressBar(Z)V

    .line 105
    return-void
.end method
