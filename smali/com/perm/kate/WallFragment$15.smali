.class Lcom/perm/kate/WallFragment$15;
.super Lcom/perm/kate/session/Callback;
.source "WallFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/WallFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/WallFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/WallFragment;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/WallFragment;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 703
    iput-object p1, p0, Lcom/perm/kate/WallFragment$15;->this$0:Lcom/perm/kate/WallFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 730
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 731
    iget-object v0, p0, Lcom/perm/kate/WallFragment$15;->this$0:Lcom/perm/kate/WallFragment;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/perm/kate/WallFragment;->access$402(Lcom/perm/kate/WallFragment;I)I

    .line 732
    iget-object v0, p0, Lcom/perm/kate/WallFragment$15;->this$0:Lcom/perm/kate/WallFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/WallFragment;->showProgressBar(Z)V

    .line 733
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 8
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    .line 707
    move-object v0, p1

    check-cast v0, Lcom/perm/kate/api/WallResponse;

    .line 708
    .local v0, "wallResponse":Lcom/perm/kate/api/WallResponse;
    iget-object v1, v0, Lcom/perm/kate/api/WallResponse;->items:Ljava/util/ArrayList;

    .line 709
    .local v1, "wall_messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/WallMessage;>;"
    iget-object v2, p0, Lcom/perm/kate/WallFragment$15;->this$0:Lcom/perm/kate/WallFragment;

    iget-boolean v2, v2, Lcom/perm/kate/WallFragment;->direct_order:Z

    if-nez v2, :cond_0

    .line 710
    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 711
    :cond_0
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v3, p0, Lcom/perm/kate/WallFragment$15;->this$0:Lcom/perm/kate/WallFragment;

    invoke-static {v3}, Lcom/perm/kate/WallFragment;->access$200(Lcom/perm/kate/WallFragment;)J

    move-result-wide v4

    invoke-virtual {v2, v1, v4, v5}, Lcom/perm/kate/db/DataHelper;->createOrUpdateWallPosts(Ljava/util/ArrayList;J)V

    .line 713
    invoke-static {v1}, Lcom/perm/kate/WallFragment;->getUsers(Ljava/util/ArrayList;)Z

    .line 714
    invoke-static {v1}, Lcom/perm/kate/WallFragment;->getGroups(Ljava/util/ArrayList;)Z

    .line 716
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lcom/perm/kate/WallFragment$15;->this$0:Lcom/perm/kate/WallFragment;

    iget v3, v3, Lcom/perm/kate/WallFragment;->page_size:I

    div-int/lit8 v3, v3, 0x2

    if-le v2, v3, :cond_3

    .line 717
    iget-object v2, p0, Lcom/perm/kate/WallFragment$15;->this$0:Lcom/perm/kate/WallFragment;

    invoke-static {v2, v6}, Lcom/perm/kate/WallFragment;->access$402(Lcom/perm/kate/WallFragment;I)I

    .line 721
    :goto_0
    iget-object v2, p0, Lcom/perm/kate/WallFragment$15;->this$0:Lcom/perm/kate/WallFragment;

    iget-boolean v2, v2, Lcom/perm/kate/WallFragment;->direct_order:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/perm/kate/WallFragment$15;->this$0:Lcom/perm/kate/WallFragment;

    iget-object v2, v2, Lcom/perm/kate/WallFragment;->cursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/perm/kate/WallFragment$15;->this$0:Lcom/perm/kate/WallFragment;

    iget-object v3, v3, Lcom/perm/kate/WallFragment;->post_count:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt v2, v3, :cond_1

    .line 722
    iget-object v2, p0, Lcom/perm/kate/WallFragment$15;->this$0:Lcom/perm/kate/WallFragment;

    invoke-static {v2, v7}, Lcom/perm/kate/WallFragment;->access$402(Lcom/perm/kate/WallFragment;I)I

    .line 723
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 724
    iget-object v2, p0, Lcom/perm/kate/WallFragment$15;->this$0:Lcom/perm/kate/WallFragment;

    invoke-virtual {v2}, Lcom/perm/kate/WallFragment;->requeryOnUiThread()V

    .line 725
    :cond_2
    iget-object v2, p0, Lcom/perm/kate/WallFragment$15;->this$0:Lcom/perm/kate/WallFragment;

    invoke-virtual {v2, v6}, Lcom/perm/kate/WallFragment;->showProgressBar(Z)V

    .line 726
    return-void

    .line 719
    :cond_3
    iget-object v2, p0, Lcom/perm/kate/WallFragment$15;->this$0:Lcom/perm/kate/WallFragment;

    invoke-static {v2, v7}, Lcom/perm/kate/WallFragment;->access$402(Lcom/perm/kate/WallFragment;I)I

    goto :goto_0
.end method
