.class Lcom/perm/kate/LikesActivity$2;
.super Lcom/perm/kate/session/Callback;
.source "LikesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/LikesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/LikesActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/LikesActivity;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/LikesActivity;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/perm/kate/LikesActivity$2;->this$0:Lcom/perm/kate/LikesActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 92
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 93
    iget-object v0, p0, Lcom/perm/kate/LikesActivity$2;->this$0:Lcom/perm/kate/LikesActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/LikesActivity;->showProgressBar(Z)V

    .line 94
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 11
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    const/4 v10, 0x0

    .line 61
    move-object v4, p1

    check-cast v4, Ljava/util/ArrayList;

    .line 62
    .local v4, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/Long;>;>;"
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 63
    .local v3, "items_ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 66
    .local v0, "friend_ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 67
    invoke-virtual {v3, v10, v0}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    .line 72
    invoke-static {v3}, Lcom/perm/kate/KApplication;->getMissingUsers(Ljava/util/ArrayList;)Z

    .line 74
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 75
    .local v1, "groups_ids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    .line 76
    .local v2, "id":Ljava/lang/Long;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-gez v6, :cond_0

    .line 77
    const-wide/16 v6, -0x1

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    mul-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 78
    .end local v2    # "id":Ljava/lang/Long;
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 79
    invoke-static {v1}, Lcom/perm/kate/KApplication;->getMissingGroups(Ljava/util/ArrayList;)Z

    .line 81
    :cond_2
    iget-object v5, p0, Lcom/perm/kate/LikesActivity$2;->this$0:Lcom/perm/kate/LikesActivity;

    invoke-virtual {v5, v10}, Lcom/perm/kate/LikesActivity;->showProgressBar(Z)V

    .line 82
    iget-object v5, p0, Lcom/perm/kate/LikesActivity$2;->this$0:Lcom/perm/kate/LikesActivity;

    new-instance v6, Lcom/perm/kate/LikesActivity$2$1;

    invoke-direct {v6, p0, v3}, Lcom/perm/kate/LikesActivity$2$1;-><init>(Lcom/perm/kate/LikesActivity$2;Ljava/util/ArrayList;)V

    invoke-virtual {v5, v6}, Lcom/perm/kate/LikesActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 88
    return-void
.end method
