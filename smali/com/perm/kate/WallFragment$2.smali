.class Lcom/perm/kate/WallFragment$2;
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
    .line 197
    iput-object p1, p0, Lcom/perm/kate/WallFragment$2;->this$0:Lcom/perm/kate/WallFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 242
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 243
    iget-object v0, p0, Lcom/perm/kate/WallFragment$2;->this$0:Lcom/perm/kate/WallFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/WallFragment;->showProgressBar(Z)V

    .line 244
    iget-object v0, p0, Lcom/perm/kate/WallFragment$2;->this$0:Lcom/perm/kate/WallFragment;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/perm/kate/WallFragment;->access$402(Lcom/perm/kate/WallFragment;I)I

    .line 245
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 14
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 201
    move-object v9, p1

    check-cast v9, Lcom/perm/kate/api/WallResponse;

    .line 202
    .local v9, "wallResponse":Lcom/perm/kate/api/WallResponse;
    iget-object v0, p0, Lcom/perm/kate/WallFragment$2;->this$0:Lcom/perm/kate/WallFragment;

    iget-object v1, v9, Lcom/perm/kate/api/WallResponse;->total_count:Ljava/lang/Integer;

    iput-object v1, v0, Lcom/perm/kate/WallFragment;->post_count:Ljava/lang/Integer;

    .line 203
    iget-object v3, v9, Lcom/perm/kate/api/WallResponse;->items:Ljava/util/ArrayList;

    .line 204
    .local v3, "wall_messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/WallMessage;>;"
    iget-object v0, p0, Lcom/perm/kate/WallFragment$2;->this$0:Lcom/perm/kate/WallFragment;

    iget-boolean v0, v0, Lcom/perm/kate/WallFragment;->direct_order:Z

    if-nez v0, :cond_0

    .line 205
    invoke-static {v3}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 207
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 209
    .local v10, "t1":J
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v1, p0, Lcom/perm/kate/WallFragment$2;->this$0:Lcom/perm/kate/WallFragment;

    invoke-static {v1}, Lcom/perm/kate/WallFragment;->access$000(Lcom/perm/kate/WallFragment;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v4, p0, Lcom/perm/kate/WallFragment$2;->this$0:Lcom/perm/kate/WallFragment;

    invoke-static {v4}, Lcom/perm/kate/WallFragment;->access$200(Lcom/perm/kate/WallFragment;)J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/perm/kate/db/DataHelper;->recreateWallPosts(JLjava/util/ArrayList;J)V

    .line 210
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 211
    .local v12, "t2":J
    const-string v0, "Kate.WallFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Recreate wall duration "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sub-long v4, v12, v10

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 214
    iget-object v2, p0, Lcom/perm/kate/WallFragment$2;->this$0:Lcom/perm/kate/WallFragment;

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/WallMessage;

    iget-boolean v0, v0, Lcom/perm/kate/api/WallMessage;->is_pinned:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/WallMessage;

    iget-wide v0, v0, Lcom/perm/kate/api/WallMessage;->id:J

    :goto_0
    invoke-static {v2, v0, v1}, Lcom/perm/kate/WallFragment;->access$302(Lcom/perm/kate/WallFragment;J)J

    .line 217
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/WallFragment$2;->this$0:Lcom/perm/kate/WallFragment;

    invoke-virtual {v0}, Lcom/perm/kate/WallFragment;->requeryOnUiThread()V

    .line 219
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/perm/kate/WallFragment$2;->this$0:Lcom/perm/kate/WallFragment;

    iget v1, v1, Lcom/perm/kate/WallFragment;->page_size:I

    div-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_6

    .line 220
    iget-object v0, p0, Lcom/perm/kate/WallFragment$2;->this$0:Lcom/perm/kate/WallFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/perm/kate/WallFragment;->access$402(Lcom/perm/kate/WallFragment;I)I

    .line 225
    :goto_1
    invoke-static {v3}, Lcom/perm/kate/WallFragment;->getUsers(Ljava/util/ArrayList;)Z

    move-result v6

    .line 226
    .local v6, "res1":Z
    invoke-static {v3}, Lcom/perm/kate/WallFragment;->getGroups(Ljava/util/ArrayList;)Z

    move-result v7

    .line 229
    .local v7, "res2":Z
    if-nez v6, :cond_2

    if-eqz v7, :cond_3

    .line 230
    :cond_2
    iget-object v0, p0, Lcom/perm/kate/WallFragment$2;->this$0:Lcom/perm/kate/WallFragment;

    invoke-virtual {v0}, Lcom/perm/kate/WallFragment;->requeryOnUiThread()V

    .line 232
    :cond_3
    iget-object v0, p0, Lcom/perm/kate/WallFragment$2;->this$0:Lcom/perm/kate/WallFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/WallFragment;->showProgressBar(Z)V

    .line 235
    invoke-static {v3}, Lcom/perm/kate/WallFragment;->getUsersOnlineState(Ljava/util/ArrayList;)Z

    move-result v8

    .line 236
    .local v8, "res3":Z
    if-eqz v8, :cond_4

    .line 237
    iget-object v0, p0, Lcom/perm/kate/WallFragment$2;->this$0:Lcom/perm/kate/WallFragment;

    invoke-virtual {v0}, Lcom/perm/kate/WallFragment;->requeryOnUiThread()V

    .line 238
    :cond_4
    return-void

    .line 214
    .end local v6    # "res1":Z
    .end local v7    # "res2":Z
    .end local v8    # "res3":Z
    :cond_5
    const-wide/16 v0, 0x0

    goto :goto_0

    .line 222
    :cond_6
    iget-object v0, p0, Lcom/perm/kate/WallFragment$2;->this$0:Lcom/perm/kate/WallFragment;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/perm/kate/WallFragment;->access$402(Lcom/perm/kate/WallFragment;I)I

    goto :goto_1
.end method
