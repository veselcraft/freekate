.class Lcom/perm/kate/FavePhotosFragment$7$1;
.super Ljava/lang/Object;
.source "FavePhotosFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/FavePhotosFragment$7;->ready(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/FavePhotosFragment$7;

.field final synthetic val$page:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/perm/kate/FavePhotosFragment$7;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$1"    # Lcom/perm/kate/FavePhotosFragment$7;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/perm/kate/FavePhotosFragment$7$1;->this$1:Lcom/perm/kate/FavePhotosFragment$7;

    iput-object p2, p0, Lcom/perm/kate/FavePhotosFragment$7$1;->val$page:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 172
    iget-object v0, p0, Lcom/perm/kate/FavePhotosFragment$7$1;->val$page:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/perm/kate/FavePhotosFragment$7$1;->val$page:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/perm/kate/FavePhotosFragment$7$1;->this$1:Lcom/perm/kate/FavePhotosFragment$7;

    iget-object v0, v0, Lcom/perm/kate/FavePhotosFragment$7;->this$0:Lcom/perm/kate/FavePhotosFragment;

    invoke-static {v0}, Lcom/perm/kate/FavePhotosFragment;->access$300(Lcom/perm/kate/FavePhotosFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/FavePhotosFragment$7$1;->val$page:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 174
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v1, p0, Lcom/perm/kate/FavePhotosFragment$7$1;->val$page:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/perm/kate/FavePhotosFragment$7$1;->this$1:Lcom/perm/kate/FavePhotosFragment$7;

    iget-object v2, v2, Lcom/perm/kate/FavePhotosFragment$7;->this$0:Lcom/perm/kate/FavePhotosFragment;

    invoke-static {v2}, Lcom/perm/kate/FavePhotosFragment;->access$400(Lcom/perm/kate/FavePhotosFragment;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/perm/kate/db/DataHelper;->createOrUpdatePhotos(Ljava/util/ArrayList;J)V

    .line 175
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v1, p0, Lcom/perm/kate/FavePhotosFragment$7$1;->val$page:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/perm/kate/FavePhotosFragment$7$1;->this$1:Lcom/perm/kate/FavePhotosFragment$7;

    iget-object v2, v2, Lcom/perm/kate/FavePhotosFragment$7;->this$0:Lcom/perm/kate/FavePhotosFragment;

    iget-wide v2, v2, Lcom/perm/kate/FavePhotosFragment;->album_id:J

    iget-object v4, p0, Lcom/perm/kate/FavePhotosFragment$7$1;->this$1:Lcom/perm/kate/FavePhotosFragment$7;

    iget-object v4, v4, Lcom/perm/kate/FavePhotosFragment$7;->this$0:Lcom/perm/kate/FavePhotosFragment;

    iget-wide v4, v4, Lcom/perm/kate/FavePhotosFragment;->album_owner_id:J

    invoke-virtual/range {v0 .. v5}, Lcom/perm/kate/db/DataHelper;->createAlbumPhotos(Ljava/util/ArrayList;JJ)V

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/FavePhotosFragment$7$1;->this$1:Lcom/perm/kate/FavePhotosFragment$7;

    iget-object v0, v0, Lcom/perm/kate/FavePhotosFragment$7;->this$0:Lcom/perm/kate/FavePhotosFragment;

    invoke-static {v0}, Lcom/perm/kate/FavePhotosFragment;->access$1000(Lcom/perm/kate/FavePhotosFragment;)V

    .line 178
    iget-object v0, p0, Lcom/perm/kate/FavePhotosFragment$7$1;->val$page:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/perm/kate/FavePhotosFragment$7$1;->val$page:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 179
    iget-object v0, p0, Lcom/perm/kate/FavePhotosFragment$7$1;->this$1:Lcom/perm/kate/FavePhotosFragment$7;

    iget-object v0, v0, Lcom/perm/kate/FavePhotosFragment$7;->this$0:Lcom/perm/kate/FavePhotosFragment;

    invoke-static {v0, v6}, Lcom/perm/kate/FavePhotosFragment;->access$702(Lcom/perm/kate/FavePhotosFragment;I)I

    .line 182
    :goto_0
    iget-object v0, p0, Lcom/perm/kate/FavePhotosFragment$7$1;->this$1:Lcom/perm/kate/FavePhotosFragment$7;

    iget-object v0, v0, Lcom/perm/kate/FavePhotosFragment$7;->this$0:Lcom/perm/kate/FavePhotosFragment;

    invoke-virtual {v0, v6}, Lcom/perm/kate/FavePhotosFragment;->showProgressBar(Z)V

    .line 183
    return-void

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/FavePhotosFragment$7$1;->this$1:Lcom/perm/kate/FavePhotosFragment$7;

    iget-object v0, v0, Lcom/perm/kate/FavePhotosFragment$7;->this$0:Lcom/perm/kate/FavePhotosFragment;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/perm/kate/FavePhotosFragment;->access$702(Lcom/perm/kate/FavePhotosFragment;I)I

    goto :goto_0
.end method
