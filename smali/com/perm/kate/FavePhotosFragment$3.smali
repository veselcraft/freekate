.class Lcom/perm/kate/FavePhotosFragment$3;
.super Lcom/perm/kate/session/Callback;
.source "FavePhotosFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FavePhotosFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/FavePhotosFragment;Landroid/app/Activity;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/perm/kate/FavePhotosFragment$3;->this$0:Lcom/perm/kate/FavePhotosFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 111
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 112
    iget-object p1, p0, Lcom/perm/kate/FavePhotosFragment$3;->this$0:Lcom/perm/kate/FavePhotosFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 6

    .line 98
    move-object v1, p1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 100
    iget-object p1, p0, Lcom/perm/kate/FavePhotosFragment$3;->this$0:Lcom/perm/kate/FavePhotosFragment;

    invoke-static {p1, v1}, Lcom/perm/kate/FavePhotosFragment;->access$302(Lcom/perm/kate/FavePhotosFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 101
    sget-object p1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v0, p0, Lcom/perm/kate/FavePhotosFragment$3;->this$0:Lcom/perm/kate/FavePhotosFragment;

    iget-wide v2, v0, Lcom/perm/kate/FavePhotosFragment;->album_id:J

    iget-wide v4, v0, Lcom/perm/kate/FavePhotosFragment;->album_owner_id:J

    invoke-virtual {p1, v2, v3, v4, v5}, Lcom/perm/kate/db/DataHelper;->deleteAlbumPhotos(JJ)Z

    .line 102
    sget-object p1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v0, p0, Lcom/perm/kate/FavePhotosFragment$3;->this$0:Lcom/perm/kate/FavePhotosFragment;

    invoke-static {v0}, Lcom/perm/kate/FavePhotosFragment;->access$400(Lcom/perm/kate/FavePhotosFragment;)J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Lcom/perm/kate/db/DataHelper;->createOrUpdatePhotos(Ljava/util/ArrayList;J)V

    .line 103
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object p1, p0, Lcom/perm/kate/FavePhotosFragment$3;->this$0:Lcom/perm/kate/FavePhotosFragment;

    iget-wide v2, p1, Lcom/perm/kate/FavePhotosFragment;->album_id:J

    iget-wide v4, p1, Lcom/perm/kate/FavePhotosFragment;->album_owner_id:J

    invoke-virtual/range {v0 .. v5}, Lcom/perm/kate/db/DataHelper;->createAlbumPhotos(Ljava/util/ArrayList;JJ)V

    .line 104
    iget-object p1, p0, Lcom/perm/kate/FavePhotosFragment$3;->this$0:Lcom/perm/kate/FavePhotosFragment;

    invoke-static {p1}, Lcom/perm/kate/FavePhotosFragment;->access$500(Lcom/perm/kate/FavePhotosFragment;)V

    .line 106
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/FavePhotosFragment$3;->this$0:Lcom/perm/kate/FavePhotosFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    return-void
.end method
