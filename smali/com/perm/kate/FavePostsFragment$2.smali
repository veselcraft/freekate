.class Lcom/perm/kate/FavePostsFragment$2;
.super Lcom/perm/kate/session/Callback;
.source "FavePostsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/FavePostsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FavePostsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/FavePostsFragment;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/FavePostsFragment;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/perm/kate/FavePostsFragment$2;->this$0:Lcom/perm/kate/FavePostsFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 127
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 128
    iget-object v0, p0, Lcom/perm/kate/FavePostsFragment$2;->this$0:Lcom/perm/kate/FavePostsFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/FavePostsFragment;->showProgressBar(Z)V

    .line 129
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 7
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    const/4 v6, 0x0

    .line 104
    move-object v0, p1

    check-cast v0, Ljava/util/ArrayList;

    .line 105
    .local v0, "posts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/WallMessage;>;"
    sget-object v3, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v4, p0, Lcom/perm/kate/FavePostsFragment$2;->this$0:Lcom/perm/kate/FavePostsFragment;

    invoke-static {v4}, Lcom/perm/kate/FavePostsFragment;->access$200(Lcom/perm/kate/FavePostsFragment;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/perm/kate/db/DataHelper;->deleteFavePosts(J)Z

    .line 106
    sget-object v3, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v4, p0, Lcom/perm/kate/FavePostsFragment$2;->this$0:Lcom/perm/kate/FavePostsFragment;

    invoke-static {v4}, Lcom/perm/kate/FavePostsFragment;->access$200(Lcom/perm/kate/FavePostsFragment;)J

    move-result-wide v4

    invoke-virtual {v3, v0, v4, v5}, Lcom/perm/kate/db/DataHelper;->createFavePosts(Ljava/util/ArrayList;J)V

    .line 108
    iget-object v3, p0, Lcom/perm/kate/FavePostsFragment$2;->this$0:Lcom/perm/kate/FavePostsFragment;

    invoke-virtual {v3}, Lcom/perm/kate/FavePostsFragment;->requeryOnUiThread()V

    .line 110
    invoke-static {v0}, Lcom/perm/kate/WallFragment;->getUsers(Ljava/util/ArrayList;)Z

    move-result v1

    .line 111
    .local v1, "res1":Z
    invoke-static {v0}, Lcom/perm/kate/WallFragment;->getGroups(Ljava/util/ArrayList;)Z

    move-result v2

    .line 113
    .local v2, "res2":Z
    if-nez v1, :cond_0

    if-eqz v2, :cond_1

    .line 114
    :cond_0
    iget-object v3, p0, Lcom/perm/kate/FavePostsFragment$2;->this$0:Lcom/perm/kate/FavePostsFragment;

    invoke-virtual {v3}, Lcom/perm/kate/FavePostsFragment;->requeryOnUiThread()V

    .line 115
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 116
    iget-object v3, p0, Lcom/perm/kate/FavePostsFragment$2;->this$0:Lcom/perm/kate/FavePostsFragment;

    iget v4, v3, Lcom/perm/kate/FavePostsFragment;->offset:I

    iget-object v5, p0, Lcom/perm/kate/FavePostsFragment$2;->this$0:Lcom/perm/kate/FavePostsFragment;

    invoke-static {v5}, Lcom/perm/kate/FavePostsFragment;->access$000(Lcom/perm/kate/FavePostsFragment;)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, v3, Lcom/perm/kate/FavePostsFragment;->offset:I

    .line 117
    iget-object v3, p0, Lcom/perm/kate/FavePostsFragment$2;->this$0:Lcom/perm/kate/FavePostsFragment;

    invoke-static {v3, v6}, Lcom/perm/kate/FavePostsFragment;->access$302(Lcom/perm/kate/FavePostsFragment;I)I

    .line 118
    iget-object v3, p0, Lcom/perm/kate/FavePostsFragment$2;->this$0:Lcom/perm/kate/FavePostsFragment;

    invoke-virtual {v3, v6}, Lcom/perm/kate/FavePostsFragment;->showProgressBar(Z)V

    .line 123
    :goto_0
    return-void

    .line 120
    :cond_2
    iget-object v3, p0, Lcom/perm/kate/FavePostsFragment$2;->this$0:Lcom/perm/kate/FavePostsFragment;

    iget-object v4, p0, Lcom/perm/kate/FavePostsFragment$2;->this$0:Lcom/perm/kate/FavePostsFragment;

    invoke-static {v4}, Lcom/perm/kate/FavePostsFragment;->access$000(Lcom/perm/kate/FavePostsFragment;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    invoke-static {v3, v4}, Lcom/perm/kate/FavePostsFragment;->access$002(Lcom/perm/kate/FavePostsFragment;I)I

    .line 121
    iget-object v3, p0, Lcom/perm/kate/FavePostsFragment$2;->this$0:Lcom/perm/kate/FavePostsFragment;

    invoke-static {v3}, Lcom/perm/kate/FavePostsFragment;->access$400(Lcom/perm/kate/FavePostsFragment;)V

    goto :goto_0
.end method
