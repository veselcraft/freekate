.class Lcom/perm/kate/FavePostsFragment$9;
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
    .line 281
    iput-object p1, p0, Lcom/perm/kate/FavePostsFragment$9;->this$0:Lcom/perm/kate/FavePostsFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 317
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 318
    iget-object v0, p0, Lcom/perm/kate/FavePostsFragment$9;->this$0:Lcom/perm/kate/FavePostsFragment;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/perm/kate/FavePostsFragment;->access$302(Lcom/perm/kate/FavePostsFragment;I)I

    .line 319
    iget-object v0, p0, Lcom/perm/kate/FavePostsFragment$9;->this$0:Lcom/perm/kate/FavePostsFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/FavePostsFragment;->showProgressBar(Z)V

    .line 320
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 5
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 285
    move-object v0, p1

    check-cast v0, Ljava/util/ArrayList;

    .line 286
    .local v0, "posts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/WallMessage;>;"
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v2, p0, Lcom/perm/kate/FavePostsFragment$9;->this$0:Lcom/perm/kate/FavePostsFragment;

    invoke-static {v2}, Lcom/perm/kate/FavePostsFragment;->access$200(Lcom/perm/kate/FavePostsFragment;)J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/perm/kate/db/DataHelper;->createFavePosts(Ljava/util/ArrayList;J)V

    .line 288
    invoke-static {v0}, Lcom/perm/kate/WallFragment;->getUsers(Ljava/util/ArrayList;)Z

    .line 289
    invoke-static {v0}, Lcom/perm/kate/WallFragment;->getGroups(Ljava/util/ArrayList;)Z

    .line 290
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 291
    iget-object v1, p0, Lcom/perm/kate/FavePostsFragment$9;->this$0:Lcom/perm/kate/FavePostsFragment;

    iget v2, v1, Lcom/perm/kate/FavePostsFragment;->offset:I

    iget-object v3, p0, Lcom/perm/kate/FavePostsFragment$9;->this$0:Lcom/perm/kate/FavePostsFragment;

    invoke-static {v3}, Lcom/perm/kate/FavePostsFragment;->access$000(Lcom/perm/kate/FavePostsFragment;)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Lcom/perm/kate/FavePostsFragment;->offset:I

    .line 292
    iget-object v1, p0, Lcom/perm/kate/FavePostsFragment$9;->this$0:Lcom/perm/kate/FavePostsFragment;

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lcom/perm/kate/FavePostsFragment;->access$002(Lcom/perm/kate/FavePostsFragment;I)I

    .line 293
    iget-object v1, p0, Lcom/perm/kate/FavePostsFragment$9;->this$0:Lcom/perm/kate/FavePostsFragment;

    invoke-static {v1, v4}, Lcom/perm/kate/FavePostsFragment;->access$302(Lcom/perm/kate/FavePostsFragment;I)I

    .line 294
    iget-object v1, p0, Lcom/perm/kate/FavePostsFragment$9;->this$0:Lcom/perm/kate/FavePostsFragment;

    invoke-virtual {v1, v4}, Lcom/perm/kate/FavePostsFragment;->showProgressBar(Z)V

    .line 311
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 312
    iget-object v1, p0, Lcom/perm/kate/FavePostsFragment$9;->this$0:Lcom/perm/kate/FavePostsFragment;

    invoke-virtual {v1}, Lcom/perm/kate/FavePostsFragment;->requeryOnUiThread()V

    .line 313
    :cond_0
    return-void

    .line 303
    :cond_1
    iget-object v1, p0, Lcom/perm/kate/FavePostsFragment$9;->this$0:Lcom/perm/kate/FavePostsFragment;

    invoke-static {v1}, Lcom/perm/kate/FavePostsFragment;->access$000(Lcom/perm/kate/FavePostsFragment;)I

    move-result v1

    const/16 v2, 0x50

    if-ge v1, v2, :cond_2

    .line 304
    iget-object v1, p0, Lcom/perm/kate/FavePostsFragment$9;->this$0:Lcom/perm/kate/FavePostsFragment;

    iget-object v2, p0, Lcom/perm/kate/FavePostsFragment$9;->this$0:Lcom/perm/kate/FavePostsFragment;

    invoke-static {v2}, Lcom/perm/kate/FavePostsFragment;->access$000(Lcom/perm/kate/FavePostsFragment;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v1, v2}, Lcom/perm/kate/FavePostsFragment;->access$002(Lcom/perm/kate/FavePostsFragment;I)I

    .line 305
    iget-object v1, p0, Lcom/perm/kate/FavePostsFragment$9;->this$0:Lcom/perm/kate/FavePostsFragment;

    invoke-static {v1}, Lcom/perm/kate/FavePostsFragment;->access$400(Lcom/perm/kate/FavePostsFragment;)V

    goto :goto_0

    .line 307
    :cond_2
    iget-object v1, p0, Lcom/perm/kate/FavePostsFragment$9;->this$0:Lcom/perm/kate/FavePostsFragment;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/perm/kate/FavePostsFragment;->access$302(Lcom/perm/kate/FavePostsFragment;I)I

    .line 308
    iget-object v1, p0, Lcom/perm/kate/FavePostsFragment$9;->this$0:Lcom/perm/kate/FavePostsFragment;

    invoke-virtual {v1, v4}, Lcom/perm/kate/FavePostsFragment;->showProgressBar(Z)V

    goto :goto_0
.end method
