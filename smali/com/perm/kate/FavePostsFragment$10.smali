.class Lcom/perm/kate/FavePostsFragment$10;
.super Lcom/perm/kate/session/Callback;
.source "FavePostsFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FavePostsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/FavePostsFragment;Landroid/app/Activity;)V
    .locals 0

    .line 326
    iput-object p1, p0, Lcom/perm/kate/FavePostsFragment$10;->this$0:Lcom/perm/kate/FavePostsFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 362
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 363
    iget-object p1, p0, Lcom/perm/kate/FavePostsFragment$10;->this$0:Lcom/perm/kate/FavePostsFragment;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/perm/kate/FavePostsFragment;->access$302(Lcom/perm/kate/FavePostsFragment;I)I

    .line 364
    iget-object p1, p0, Lcom/perm/kate/FavePostsFragment$10;->this$0:Lcom/perm/kate/FavePostsFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 4

    .line 330
    check-cast p1, Ljava/util/ArrayList;

    .line 331
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v1, p0, Lcom/perm/kate/FavePostsFragment$10;->this$0:Lcom/perm/kate/FavePostsFragment;

    invoke-static {v1}, Lcom/perm/kate/FavePostsFragment;->access$200(Lcom/perm/kate/FavePostsFragment;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/perm/kate/FavePostsFragment$10;->this$0:Lcom/perm/kate/FavePostsFragment;

    iget-boolean v3, v3, Lcom/perm/kate/FavePostsFragment;->is_fave:Z

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/perm/kate/db/DataHelper;->createFavePosts(Ljava/util/ArrayList;JZ)V

    .line 333
    invoke-static {p1}, Lcom/perm/kate/WallFragment;->getUsers(Ljava/util/ArrayList;)Z

    .line 334
    invoke-static {p1}, Lcom/perm/kate/WallFragment;->getGroups(Ljava/util/ArrayList;)Z

    .line 335
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/perm/kate/FavePostsFragment$10;->this$0:Lcom/perm/kate/FavePostsFragment;

    iget v2, v0, Lcom/perm/kate/FavePostsFragment;->offset:I

    invoke-static {v0}, Lcom/perm/kate/FavePostsFragment;->access$000(Lcom/perm/kate/FavePostsFragment;)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Lcom/perm/kate/FavePostsFragment;->offset:I

    .line 337
    iget-object v0, p0, Lcom/perm/kate/FavePostsFragment$10;->this$0:Lcom/perm/kate/FavePostsFragment;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lcom/perm/kate/FavePostsFragment;->access$002(Lcom/perm/kate/FavePostsFragment;I)I

    .line 338
    iget-object v0, p0, Lcom/perm/kate/FavePostsFragment$10;->this$0:Lcom/perm/kate/FavePostsFragment;

    invoke-static {v0, v1}, Lcom/perm/kate/FavePostsFragment;->access$302(Lcom/perm/kate/FavePostsFragment;I)I

    .line 339
    iget-object v0, p0, Lcom/perm/kate/FavePostsFragment$10;->this$0:Lcom/perm/kate/FavePostsFragment;

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    goto :goto_0

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/FavePostsFragment$10;->this$0:Lcom/perm/kate/FavePostsFragment;

    invoke-static {v0}, Lcom/perm/kate/FavePostsFragment;->access$000(Lcom/perm/kate/FavePostsFragment;)I

    move-result v0

    const/16 v2, 0x50

    if-ge v0, v2, :cond_1

    iget-object v0, p0, Lcom/perm/kate/FavePostsFragment$10;->this$0:Lcom/perm/kate/FavePostsFragment;

    iget-boolean v2, v0, Lcom/perm/kate/FavePostsFragment;->is_fave:Z

    if-nez v2, :cond_1

    const/4 v1, 0x2

    .line 349
    invoke-static {v0, v1}, Lcom/perm/kate/FavePostsFragment;->access$028(Lcom/perm/kate/FavePostsFragment;I)I

    .line 350
    iget-object v0, p0, Lcom/perm/kate/FavePostsFragment$10;->this$0:Lcom/perm/kate/FavePostsFragment;

    invoke-static {v0}, Lcom/perm/kate/FavePostsFragment;->access$400(Lcom/perm/kate/FavePostsFragment;)V

    goto :goto_0

    .line 352
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/FavePostsFragment$10;->this$0:Lcom/perm/kate/FavePostsFragment;

    const/4 v2, 0x3

    invoke-static {v0, v2}, Lcom/perm/kate/FavePostsFragment;->access$302(Lcom/perm/kate/FavePostsFragment;I)I

    .line 353
    iget-object v0, p0, Lcom/perm/kate/FavePostsFragment$10;->this$0:Lcom/perm/kate/FavePostsFragment;

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 356
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 357
    iget-object p1, p0, Lcom/perm/kate/FavePostsFragment$10;->this$0:Lcom/perm/kate/FavePostsFragment;

    invoke-virtual {p1}, Lcom/perm/kate/FavePostsFragment;->requeryOnUiThread()V

    :cond_2
    return-void
.end method
