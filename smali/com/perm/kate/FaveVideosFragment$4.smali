.class Lcom/perm/kate/FaveVideosFragment$4;
.super Ljava/lang/Object;
.source "FaveVideosFragment.java"

# interfaces
.implements Lcom/perm/kate/VideoMenuCallback;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FaveVideosFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/FaveVideosFragment;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/perm/kate/FaveVideosFragment$4;->this$0:Lcom/perm/kate/FaveVideosFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public beforeDelete(J)V
    .locals 0

    return-void
.end method

.method public faveChanged(JJZ)V
    .locals 0

    .line 130
    iget-object p1, p0, Lcom/perm/kate/FaveVideosFragment$4;->this$0:Lcom/perm/kate/FaveVideosFragment;

    invoke-virtual {p1}, Lcom/perm/kate/FaveVideosFragment;->refreshInThread()V

    return-void
.end method

.method public userLikesChanged(JJZ)V
    .locals 3

    .line 118
    iget-object p3, p0, Lcom/perm/kate/FaveVideosFragment$4;->this$0:Lcom/perm/kate/FaveVideosFragment;

    iget-object p3, p3, Lcom/perm/kate/FaveVideosFragment;->videos:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/perm/kate/api/Video;

    .line 119
    iget-wide v0, p4, Lcom/perm/kate/api/Video;->vid:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    .line 120
    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p4, Lcom/perm/kate/api/Video;->user_likes:Ljava/lang/Boolean;

    .line 124
    :cond_1
    iget-object p1, p0, Lcom/perm/kate/FaveVideosFragment$4;->this$0:Lcom/perm/kate/FaveVideosFragment;

    invoke-static {p1}, Lcom/perm/kate/FaveVideosFragment;->access$200(Lcom/perm/kate/FaveVideosFragment;)V

    return-void
.end method
