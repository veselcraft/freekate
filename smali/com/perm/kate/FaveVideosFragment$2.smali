.class Lcom/perm/kate/FaveVideosFragment$2;
.super Lcom/perm/kate/session/Callback;
.source "FaveVideosFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/FaveVideosFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FaveVideosFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/FaveVideosFragment;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/FaveVideosFragment;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/perm/kate/FaveVideosFragment$2;->this$0:Lcom/perm/kate/FaveVideosFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 73
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 74
    iget-object v0, p0, Lcom/perm/kate/FaveVideosFragment$2;->this$0:Lcom/perm/kate/FaveVideosFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/FaveVideosFragment;->showProgressBar(Z)V

    .line 75
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 9
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 62
    iget-object v1, p0, Lcom/perm/kate/FaveVideosFragment$2;->this$0:Lcom/perm/kate/FaveVideosFragment;

    check-cast p1, Ljava/util/ArrayList;

    .end local p1    # "data":Ljava/lang/Object;
    iput-object p1, v1, Lcom/perm/kate/FaveVideosFragment;->videos:Ljava/util/ArrayList;

    .line 64
    iget-object v1, p0, Lcom/perm/kate/FaveVideosFragment$2;->this$0:Lcom/perm/kate/FaveVideosFragment;

    iget-object v1, v1, Lcom/perm/kate/FaveVideosFragment;->videos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Video;

    .line 65
    .local v0, "v":Lcom/perm/kate/api/Video;
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lcom/perm/kate/api/Video;->user_likes:Ljava/lang/Boolean;

    goto :goto_0

    .line 66
    .end local v0    # "v":Lcom/perm/kate/api/Video;
    :cond_0
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v2, p0, Lcom/perm/kate/FaveVideosFragment$2;->this$0:Lcom/perm/kate/FaveVideosFragment;

    invoke-static {v2}, Lcom/perm/kate/FaveVideosFragment;->access$100(Lcom/perm/kate/FaveVideosFragment;)J

    move-result-wide v2

    const-wide/16 v4, -0x3

    iget-object v6, p0, Lcom/perm/kate/FaveVideosFragment$2;->this$0:Lcom/perm/kate/FaveVideosFragment;

    iget-object v6, v6, Lcom/perm/kate/FaveVideosFragment;->videos:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/perm/kate/FaveVideosFragment$2;->this$0:Lcom/perm/kate/FaveVideosFragment;

    invoke-static {v7}, Lcom/perm/kate/FaveVideosFragment;->access$100(Lcom/perm/kate/FaveVideosFragment;)J

    move-result-wide v7

    invoke-virtual/range {v1 .. v8}, Lcom/perm/kate/db/DataHelper;->DeleteAndCreateVideos(JJLjava/util/ArrayList;J)V

    .line 67
    iget-object v1, p0, Lcom/perm/kate/FaveVideosFragment$2;->this$0:Lcom/perm/kate/FaveVideosFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/perm/kate/FaveVideosFragment;->showProgressBar(Z)V

    .line 68
    iget-object v1, p0, Lcom/perm/kate/FaveVideosFragment$2;->this$0:Lcom/perm/kate/FaveVideosFragment;

    invoke-static {v1}, Lcom/perm/kate/FaveVideosFragment;->access$200(Lcom/perm/kate/FaveVideosFragment;)V

    .line 69
    return-void
.end method
