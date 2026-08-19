.class Lcom/perm/kate/FavePostsFragment$2;
.super Lcom/perm/kate/session/Callback;
.source "FavePostsFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FavePostsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/FavePostsFragment;Landroid/app/Activity;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/perm/kate/FavePostsFragment$2;->this$0:Lcom/perm/kate/FavePostsFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 144
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 145
    iget-object p1, p0, Lcom/perm/kate/FavePostsFragment$2;->this$0:Lcom/perm/kate/FavePostsFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 6

    .line 119
    check-cast p1, Ljava/util/ArrayList;

    .line 120
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 121
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v3, p0, Lcom/perm/kate/FavePostsFragment$2;->this$0:Lcom/perm/kate/FavePostsFragment;

    invoke-static {v3}, Lcom/perm/kate/FavePostsFragment;->access$200(Lcom/perm/kate/FavePostsFragment;)J

    move-result-wide v3

    iget-object v5, p0, Lcom/perm/kate/FavePostsFragment$2;->this$0:Lcom/perm/kate/FavePostsFragment;

    iget-boolean v5, v5, Lcom/perm/kate/FavePostsFragment;->is_fave:Z

    invoke-virtual {v2, v3, v4, v5}, Lcom/perm/kate/db/DataHelper;->deleteFavePosts(JZ)Z

    .line 122
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v3, p0, Lcom/perm/kate/FavePostsFragment$2;->this$0:Lcom/perm/kate/FavePostsFragment;

    invoke-static {v3}, Lcom/perm/kate/FavePostsFragment;->access$200(Lcom/perm/kate/FavePostsFragment;)J

    move-result-wide v3

    iget-object v5, p0, Lcom/perm/kate/FavePostsFragment$2;->this$0:Lcom/perm/kate/FavePostsFragment;

    iget-boolean v5, v5, Lcom/perm/kate/FavePostsFragment;->is_fave:Z

    invoke-virtual {v2, p1, v3, v4, v5}, Lcom/perm/kate/db/DataHelper;->createFavePosts(Ljava/util/ArrayList;JZ)V

    const-string v2, "fpf_recreateFavePosts"

    .line 123
    invoke-static {v0, v1, v2}, Lcom/perm/kate/Helper;->reportDbWriteDuration(JLjava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/perm/kate/FavePostsFragment$2;->this$0:Lcom/perm/kate/FavePostsFragment;

    invoke-virtual {v0}, Lcom/perm/kate/FavePostsFragment;->requeryOnUiThread()V

    .line 127
    invoke-static {p1}, Lcom/perm/kate/WallFragment;->getUsers(Ljava/util/ArrayList;)Z

    move-result v0

    .line 128
    invoke-static {p1}, Lcom/perm/kate/WallFragment;->getGroups(Ljava/util/ArrayList;)Z

    move-result v1

    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/FavePostsFragment$2;->this$0:Lcom/perm/kate/FavePostsFragment;

    invoke-virtual {v0}, Lcom/perm/kate/FavePostsFragment;->requeryOnUiThread()V

    .line 132
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-gtz p1, :cond_3

    iget-object p1, p0, Lcom/perm/kate/FavePostsFragment$2;->this$0:Lcom/perm/kate/FavePostsFragment;

    iget-boolean v0, p1, Lcom/perm/kate/FavePostsFragment;->is_fave:Z

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    .line 137
    invoke-static {p1, v0}, Lcom/perm/kate/FavePostsFragment;->access$028(Lcom/perm/kate/FavePostsFragment;I)I

    .line 138
    iget-object p1, p0, Lcom/perm/kate/FavePostsFragment$2;->this$0:Lcom/perm/kate/FavePostsFragment;

    invoke-static {p1}, Lcom/perm/kate/FavePostsFragment;->access$400(Lcom/perm/kate/FavePostsFragment;)V

    goto :goto_1

    .line 133
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/perm/kate/FavePostsFragment$2;->this$0:Lcom/perm/kate/FavePostsFragment;

    iget v0, p1, Lcom/perm/kate/FavePostsFragment;->offset:I

    invoke-static {p1}, Lcom/perm/kate/FavePostsFragment;->access$000(Lcom/perm/kate/FavePostsFragment;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Lcom/perm/kate/FavePostsFragment;->offset:I

    .line 134
    iget-object p1, p0, Lcom/perm/kate/FavePostsFragment$2;->this$0:Lcom/perm/kate/FavePostsFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/perm/kate/FavePostsFragment;->access$302(Lcom/perm/kate/FavePostsFragment;I)I

    .line 135
    iget-object p1, p0, Lcom/perm/kate/FavePostsFragment$2;->this$0:Lcom/perm/kate/FavePostsFragment;

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    :goto_1
    return-void
.end method
