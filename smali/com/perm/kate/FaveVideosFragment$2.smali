.class Lcom/perm/kate/FaveVideosFragment$2;
.super Lcom/perm/kate/session/Callback;
.source "FaveVideosFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FaveVideosFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/FaveVideosFragment;Landroid/app/Activity;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/perm/kate/FaveVideosFragment$2;->this$0:Lcom/perm/kate/FaveVideosFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 91
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 92
    iget-object p1, p0, Lcom/perm/kate/FaveVideosFragment$2;->this$0:Lcom/perm/kate/FaveVideosFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 93
    iget-object p1, p0, Lcom/perm/kate/FaveVideosFragment$2;->this$0:Lcom/perm/kate/FaveVideosFragment;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/perm/kate/FaveVideosFragment;->access$402(Lcom/perm/kate/FaveVideosFragment;I)I

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 10

    .line 77
    iget-object v0, p0, Lcom/perm/kate/FaveVideosFragment$2;->this$0:Lcom/perm/kate/FaveVideosFragment;

    check-cast p1, Ljava/util/ArrayList;

    iput-object p1, v0, Lcom/perm/kate/FaveVideosFragment;->videos:Ljava/util/ArrayList;

    .line 78
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "got "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/perm/kate/FaveVideosFragment$2;->this$0:Lcom/perm/kate/FaveVideosFragment;

    iget-object v0, v0, Lcom/perm/kate/FaveVideosFragment;->videos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " vodeos"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FaveVideosFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object p1, p0, Lcom/perm/kate/FaveVideosFragment$2;->this$0:Lcom/perm/kate/FaveVideosFragment;

    iget-boolean v0, p1, Lcom/perm/kate/FaveVideosFragment;->is_fave:Z

    if-nez v0, :cond_0

    .line 81
    iget-object p1, p1, Lcom/perm/kate/FaveVideosFragment;->videos:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Video;

    .line 82
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v1, v0, Lcom/perm/kate/api/Video;->user_likes:Ljava/lang/Boolean;

    goto :goto_0

    .line 83
    :cond_0
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object p1, p0, Lcom/perm/kate/FaveVideosFragment$2;->this$0:Lcom/perm/kate/FaveVideosFragment;

    invoke-static {p1}, Lcom/perm/kate/FaveVideosFragment;->access$100(Lcom/perm/kate/FaveVideosFragment;)J

    move-result-wide v3

    iget-object p1, p0, Lcom/perm/kate/FaveVideosFragment$2;->this$0:Lcom/perm/kate/FaveVideosFragment;

    iget-boolean v0, p1, Lcom/perm/kate/FaveVideosFragment;->is_fave:Z

    if-eqz v0, :cond_1

    const-wide/16 v0, -0x4

    goto :goto_1

    :cond_1
    const-wide/16 v0, -0x3

    :goto_1
    move-wide v5, v0

    iget-object v7, p1, Lcom/perm/kate/FaveVideosFragment;->videos:Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/perm/kate/FaveVideosFragment;->access$100(Lcom/perm/kate/FaveVideosFragment;)J

    move-result-wide v8

    invoke-virtual/range {v2 .. v9}, Lcom/perm/kate/db/DataHelper;->DeleteAndCreateVideos(JJLjava/util/ArrayList;J)V

    .line 84
    iget-object p1, p0, Lcom/perm/kate/FaveVideosFragment$2;->this$0:Lcom/perm/kate/FaveVideosFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 85
    iget-object p1, p0, Lcom/perm/kate/FaveVideosFragment$2;->this$0:Lcom/perm/kate/FaveVideosFragment;

    invoke-static {p1}, Lcom/perm/kate/FaveVideosFragment;->access$200(Lcom/perm/kate/FaveVideosFragment;)V

    .line 86
    iget-object p1, p0, Lcom/perm/kate/FaveVideosFragment$2;->this$0:Lcom/perm/kate/FaveVideosFragment;

    iget-object v0, p1, Lcom/perm/kate/FaveVideosFragment;->videos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/perm/kate/FaveVideosFragment;->access$300(Lcom/perm/kate/FaveVideosFragment;I)V

    return-void
.end method
