.class Lcom/perm/kate/FavePhotosFragment$7$1;
.super Ljava/lang/Object;
.source "FavePhotosFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/perm/kate/FavePhotosFragment$7;

.field final synthetic val$page:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/perm/kate/FavePhotosFragment$7;Ljava/util/ArrayList;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/perm/kate/FavePhotosFragment$7$1;->this$1:Lcom/perm/kate/FavePhotosFragment$7;

    iput-object p2, p0, Lcom/perm/kate/FavePhotosFragment$7$1;->val$page:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 174
    iget-object v0, p0, Lcom/perm/kate/FavePhotosFragment$7$1;->val$page:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/perm/kate/FavePhotosFragment$7$1;->this$1:Lcom/perm/kate/FavePhotosFragment$7;

    iget-object v0, v0, Lcom/perm/kate/FavePhotosFragment$7;->this$0:Lcom/perm/kate/FavePhotosFragment;

    invoke-static {v0}, Lcom/perm/kate/FavePhotosFragment;->access$300(Lcom/perm/kate/FavePhotosFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/FavePhotosFragment$7$1;->val$page:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 176
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v1, p0, Lcom/perm/kate/FavePhotosFragment$7$1;->val$page:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/perm/kate/FavePhotosFragment$7$1;->this$1:Lcom/perm/kate/FavePhotosFragment$7;

    iget-object v2, v2, Lcom/perm/kate/FavePhotosFragment$7;->this$0:Lcom/perm/kate/FavePhotosFragment;

    invoke-static {v2}, Lcom/perm/kate/FavePhotosFragment;->access$400(Lcom/perm/kate/FavePhotosFragment;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/perm/kate/db/DataHelper;->createOrUpdatePhotos(Ljava/util/ArrayList;J)V

    .line 177
    sget-object v4, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v5, p0, Lcom/perm/kate/FavePhotosFragment$7$1;->val$page:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/perm/kate/FavePhotosFragment$7$1;->this$1:Lcom/perm/kate/FavePhotosFragment$7;

    iget-object v0, v0, Lcom/perm/kate/FavePhotosFragment$7;->this$0:Lcom/perm/kate/FavePhotosFragment;

    iget-wide v6, v0, Lcom/perm/kate/FavePhotosFragment;->album_id:J

    iget-wide v8, v0, Lcom/perm/kate/FavePhotosFragment;->album_owner_id:J

    invoke-virtual/range {v4 .. v9}, Lcom/perm/kate/db/DataHelper;->createAlbumPhotos(Ljava/util/ArrayList;JJ)V

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/FavePhotosFragment$7$1;->this$1:Lcom/perm/kate/FavePhotosFragment$7;

    iget-object v0, v0, Lcom/perm/kate/FavePhotosFragment$7;->this$0:Lcom/perm/kate/FavePhotosFragment;

    invoke-static {v0}, Lcom/perm/kate/FavePhotosFragment;->access$1000(Lcom/perm/kate/FavePhotosFragment;)V

    .line 180
    iget-object v0, p0, Lcom/perm/kate/FavePhotosFragment$7$1;->val$page:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 181
    iget-object v0, p0, Lcom/perm/kate/FavePhotosFragment$7$1;->this$1:Lcom/perm/kate/FavePhotosFragment$7;

    iget-object v0, v0, Lcom/perm/kate/FavePhotosFragment$7;->this$0:Lcom/perm/kate/FavePhotosFragment;

    invoke-static {v0, v1}, Lcom/perm/kate/FavePhotosFragment;->access$702(Lcom/perm/kate/FavePhotosFragment;I)I

    goto :goto_0

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/FavePhotosFragment$7$1;->this$1:Lcom/perm/kate/FavePhotosFragment$7;

    iget-object v0, v0, Lcom/perm/kate/FavePhotosFragment$7;->this$0:Lcom/perm/kate/FavePhotosFragment;

    const/4 v2, 0x3

    invoke-static {v0, v2}, Lcom/perm/kate/FavePhotosFragment;->access$702(Lcom/perm/kate/FavePhotosFragment;I)I

    .line 184
    :goto_0
    iget-object v0, p0, Lcom/perm/kate/FavePhotosFragment$7$1;->this$1:Lcom/perm/kate/FavePhotosFragment$7;

    iget-object v0, v0, Lcom/perm/kate/FavePhotosFragment$7;->this$0:Lcom/perm/kate/FavePhotosFragment;

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    return-void
.end method
