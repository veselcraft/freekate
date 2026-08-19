.class Lcom/perm/kate/FaveVideosFragment$7;
.super Lcom/perm/kate/session/Callback;
.source "FaveVideosFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FaveVideosFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/FaveVideosFragment;Landroid/app/Activity;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/perm/kate/FaveVideosFragment$7;->this$0:Lcom/perm/kate/FaveVideosFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 192
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 193
    iget-object p1, p0, Lcom/perm/kate/FaveVideosFragment$7;->this$0:Lcom/perm/kate/FaveVideosFragment;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/perm/kate/FaveVideosFragment;->access$402(Lcom/perm/kate/FaveVideosFragment;I)I

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 3

    .line 181
    check-cast p1, Ljava/util/ArrayList;

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "got "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " vodeos"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FaveVideosFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v0, p0, Lcom/perm/kate/FaveVideosFragment$7;->this$0:Lcom/perm/kate/FaveVideosFragment;

    iget-boolean v0, v0, Lcom/perm/kate/FaveVideosFragment;->is_fave:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/Video;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iput-object v2, v1, Lcom/perm/kate/api/Video;->user_likes:Ljava/lang/Boolean;

    goto :goto_0

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/FaveVideosFragment$7;->this$0:Lcom/perm/kate/FaveVideosFragment;

    iget-object v0, v0, Lcom/perm/kate/FaveVideosFragment;->videos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 186
    iget-object v0, p0, Lcom/perm/kate/FaveVideosFragment$7;->this$0:Lcom/perm/kate/FaveVideosFragment;

    invoke-static {v0}, Lcom/perm/kate/FaveVideosFragment;->access$200(Lcom/perm/kate/FaveVideosFragment;)V

    .line 187
    iget-object v0, p0, Lcom/perm/kate/FaveVideosFragment$7;->this$0:Lcom/perm/kate/FaveVideosFragment;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-static {v0, p1}, Lcom/perm/kate/FaveVideosFragment;->access$300(Lcom/perm/kate/FaveVideosFragment;I)V

    return-void
.end method
