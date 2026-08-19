.class Lcom/perm/kate/WallFragment$2;
.super Lcom/perm/kate/session/Callback;
.source "WallFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/WallFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/WallFragment;Landroid/app/Activity;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/perm/kate/WallFragment$2;->this$0:Lcom/perm/kate/WallFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 250
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 251
    iget-object p1, p0, Lcom/perm/kate/WallFragment$2;->this$0:Lcom/perm/kate/WallFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 252
    iget-object p1, p0, Lcom/perm/kate/WallFragment$2;->this$0:Lcom/perm/kate/WallFragment;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/perm/kate/WallFragment;->access$402(Lcom/perm/kate/WallFragment;I)I

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 10

    .line 211
    check-cast p1, Lcom/perm/kate/api/WallResponse;

    .line 212
    iget-object v0, p0, Lcom/perm/kate/WallFragment$2;->this$0:Lcom/perm/kate/WallFragment;

    iget-object v1, p1, Lcom/perm/kate/api/WallResponse;->total_count:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/perm/kate/WallFragment;->post_count:Ljava/lang/Integer;

    .line 213
    iget-object p1, p1, Lcom/perm/kate/api/WallResponse;->items:Ljava/util/ArrayList;

    .line 214
    iget-boolean v0, v0, Lcom/perm/kate/WallFragment;->direct_order:Z

    if-nez v0, :cond_0

    .line 215
    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 217
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 219
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    .line 220
    iget-object v2, p0, Lcom/perm/kate/WallFragment$2;->this$0:Lcom/perm/kate/WallFragment;

    const-string v3, "recreateWallPosts"

    invoke-virtual {v2, v3}, Lcom/perm/kate/WallFragment;->addStep(Ljava/lang/String;)V

    .line 221
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v3, p0, Lcom/perm/kate/WallFragment$2;->this$0:Lcom/perm/kate/WallFragment;

    invoke-static {v3}, Lcom/perm/kate/WallFragment;->access$000(Lcom/perm/kate/WallFragment;)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v5, p0, Lcom/perm/kate/WallFragment$2;->this$0:Lcom/perm/kate/WallFragment;

    invoke-static {v5}, Lcom/perm/kate/WallFragment;->access$200(Lcom/perm/kate/WallFragment;)J

    move-result-wide v6

    move-object v5, p1

    invoke-virtual/range {v2 .. v7}, Lcom/perm/kate/db/DataHelper;->recreateWallPosts(JLjava/util/ArrayList;J)V

    const-string v2, "wf_recreateWallPosts"

    .line 222
    invoke-static {v8, v9, v2}, Lcom/perm/kate/Helper;->reportDbWriteDuration(JLjava/lang/String;)V

    .line 223
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 224
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Recreate wall duration "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr v2, v0

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Kate.WallFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_2

    .line 227
    iget-object v0, p0, Lcom/perm/kate/WallFragment$2;->this$0:Lcom/perm/kate/WallFragment;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/WallMessage;

    iget-boolean v2, v2, Lcom/perm/kate/api/WallMessage;->is_pinned:Z

    if-eqz v2, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/WallMessage;

    iget-wide v2, v2, Lcom/perm/kate/api/WallMessage;->id:J

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x0

    :goto_0
    invoke-static {v0, v2, v3}, Lcom/perm/kate/WallFragment;->access$302(Lcom/perm/kate/WallFragment;J)J

    .line 230
    :cond_2
    iget-object v0, p0, Lcom/perm/kate/WallFragment$2;->this$0:Lcom/perm/kate/WallFragment;

    invoke-virtual {v0}, Lcom/perm/kate/WallFragment;->requeryOnUiThread()V

    .line 232
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v2, p0, Lcom/perm/kate/WallFragment$2;->this$0:Lcom/perm/kate/WallFragment;

    iget v3, v2, Lcom/perm/kate/WallFragment;->page_size:I

    div-int/lit8 v3, v3, 0x2

    if-le v0, v3, :cond_3

    .line 233
    invoke-static {v2, v1}, Lcom/perm/kate/WallFragment;->access$402(Lcom/perm/kate/WallFragment;I)I

    goto :goto_1

    :cond_3
    const/4 v0, 0x3

    .line 235
    invoke-static {v2, v0}, Lcom/perm/kate/WallFragment;->access$402(Lcom/perm/kate/WallFragment;I)I

    .line 238
    :goto_1
    invoke-static {p1}, Lcom/perm/kate/WallFragment;->getUsers(Ljava/util/ArrayList;)Z

    move-result v0

    .line 239
    invoke-static {p1}, Lcom/perm/kate/WallFragment;->getGroups(Ljava/util/ArrayList;)Z

    move-result p1

    if-nez v0, :cond_4

    if-eqz p1, :cond_5

    .line 243
    :cond_4
    iget-object p1, p0, Lcom/perm/kate/WallFragment$2;->this$0:Lcom/perm/kate/WallFragment;

    invoke-virtual {p1}, Lcom/perm/kate/WallFragment;->requeryOnUiThread()V

    .line 245
    :cond_5
    iget-object p1, p0, Lcom/perm/kate/WallFragment$2;->this$0:Lcom/perm/kate/WallFragment;

    invoke-virtual {p1, v1}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    return-void
.end method
