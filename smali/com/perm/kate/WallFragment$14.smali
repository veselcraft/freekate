.class Lcom/perm/kate/WallFragment$14;
.super Lcom/perm/kate/session/Callback;
.source "WallFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/WallFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/WallFragment;Landroid/app/Activity;)V
    .locals 0

    .line 750
    iput-object p1, p0, Lcom/perm/kate/WallFragment$14;->this$0:Lcom/perm/kate/WallFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 789
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 790
    iget-object p1, p0, Lcom/perm/kate/WallFragment$14;->this$0:Lcom/perm/kate/WallFragment;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/perm/kate/WallFragment;->access$402(Lcom/perm/kate/WallFragment;I)I

    .line 791
    iget-object p1, p0, Lcom/perm/kate/WallFragment$14;->this$0:Lcom/perm/kate/WallFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 5

    .line 753
    check-cast p1, Lcom/perm/kate/api/WallResponse;

    .line 754
    iget-object p1, p1, Lcom/perm/kate/api/WallResponse;->items:Ljava/util/ArrayList;

    .line 755
    iget-object v0, p0, Lcom/perm/kate/WallFragment$14;->this$0:Lcom/perm/kate/WallFragment;

    iget-boolean v0, v0, Lcom/perm/kate/WallFragment;->direct_order:Z

    if-nez v0, :cond_0

    .line 756
    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 757
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 758
    iget-object v2, p0, Lcom/perm/kate/WallFragment$14;->this$0:Lcom/perm/kate/WallFragment;

    const-string v3, "createOrUpdateWallPosts"

    invoke-virtual {v2, v3}, Lcom/perm/kate/WallFragment;->addStep(Ljava/lang/String;)V

    .line 759
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v3, p0, Lcom/perm/kate/WallFragment$14;->this$0:Lcom/perm/kate/WallFragment;

    invoke-static {v3}, Lcom/perm/kate/WallFragment;->access$200(Lcom/perm/kate/WallFragment;)J

    move-result-wide v3

    invoke-virtual {v2, p1, v3, v4}, Lcom/perm/kate/db/DataHelper;->createOrUpdateWallPosts(Ljava/util/ArrayList;J)V

    const-string v2, "wf_createOrUpdateWallPosts"

    .line 760
    invoke-static {v0, v1, v2}, Lcom/perm/kate/Helper;->reportDbWriteDuration(JLjava/lang/String;)V

    .line 763
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 764
    iget-object v0, p0, Lcom/perm/kate/WallFragment$14;->this$0:Lcom/perm/kate/WallFragment;

    invoke-virtual {v0}, Lcom/perm/kate/WallFragment;->requeryOnUiThread()V

    .line 766
    :cond_1
    invoke-static {p1}, Lcom/perm/kate/WallFragment;->getUsers(Ljava/util/ArrayList;)Z

    move-result v0

    .line 767
    invoke-static {p1}, Lcom/perm/kate/WallFragment;->getGroups(Ljava/util/ArrayList;)Z

    move-result v1

    .line 769
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget-object v2, p0, Lcom/perm/kate/WallFragment$14;->this$0:Lcom/perm/kate/WallFragment;

    iget v3, v2, Lcom/perm/kate/WallFragment;->page_size:I

    div-int/lit8 v3, v3, 0x2

    const/4 v4, 0x0

    if-le p1, v3, :cond_2

    .line 770
    invoke-static {v2, v4}, Lcom/perm/kate/WallFragment;->access$402(Lcom/perm/kate/WallFragment;I)I

    goto :goto_0

    :cond_2
    const/4 p1, 0x3

    .line 772
    invoke-static {v2, p1}, Lcom/perm/kate/WallFragment;->access$402(Lcom/perm/kate/WallFragment;I)I

    .line 773
    :goto_0
    iget-object p1, p0, Lcom/perm/kate/WallFragment$14;->this$0:Lcom/perm/kate/WallFragment;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "callback_load_more;do="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/perm/kate/WallFragment$14;->this$0:Lcom/perm/kate/WallFragment;

    iget-boolean v3, v3, Lcom/perm/kate/WallFragment;->direct_order:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/perm/kate/WallFragment;->addStep(Ljava/lang/String;)V

    .line 781
    iget-object p1, p0, Lcom/perm/kate/WallFragment$14;->this$0:Lcom/perm/kate/WallFragment;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "callback_load_more_after_getCount;do="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/perm/kate/WallFragment$14;->this$0:Lcom/perm/kate/WallFragment;

    iget-boolean v3, v3, Lcom/perm/kate/WallFragment;->direct_order:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/perm/kate/WallFragment;->addStep(Ljava/lang/String;)V

    if-nez v0, :cond_3

    if-eqz v1, :cond_4

    .line 783
    :cond_3
    iget-object p1, p0, Lcom/perm/kate/WallFragment$14;->this$0:Lcom/perm/kate/WallFragment;

    invoke-virtual {p1}, Lcom/perm/kate/WallFragment;->requeryOnUiThread()V

    .line 784
    :cond_4
    iget-object p1, p0, Lcom/perm/kate/WallFragment$14;->this$0:Lcom/perm/kate/WallFragment;

    invoke-virtual {p1, v4}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    return-void
.end method
