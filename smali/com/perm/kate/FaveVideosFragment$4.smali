.class Lcom/perm/kate/FaveVideosFragment$4;
.super Ljava/lang/Object;
.source "FaveVideosFragment.java"

# interfaces
.implements Lcom/perm/kate/VideoMenuCallback;


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
.method constructor <init>(Lcom/perm/kate/FaveVideosFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/FaveVideosFragment;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/perm/kate/FaveVideosFragment$4;->this$0:Lcom/perm/kate/FaveVideosFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public beforeDelete(J)V
    .locals 0
    .param p1, "video_id"    # J

    .prologue
    .line 109
    return-void
.end method

.method public userLikesChanged(JJZ)V
    .locals 5
    .param p1, "video_id"    # J
    .param p3, "owner_id"    # J
    .param p5, "user_likes"    # Z

    .prologue
    .line 99
    iget-object v1, p0, Lcom/perm/kate/FaveVideosFragment$4;->this$0:Lcom/perm/kate/FaveVideosFragment;

    iget-object v1, v1, Lcom/perm/kate/FaveVideosFragment;->videos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Video;

    .line 100
    .local v0, "v":Lcom/perm/kate/api/Video;
    iget-wide v2, v0, Lcom/perm/kate/api/Video;->vid:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 101
    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Video;->user_likes:Ljava/lang/Boolean;

    .line 105
    .end local v0    # "v":Lcom/perm/kate/api/Video;
    :cond_1
    iget-object v1, p0, Lcom/perm/kate/FaveVideosFragment$4;->this$0:Lcom/perm/kate/FaveVideosFragment;

    invoke-static {v1}, Lcom/perm/kate/FaveVideosFragment;->access$200(Lcom/perm/kate/FaveVideosFragment;)V

    .line 106
    return-void
.end method
