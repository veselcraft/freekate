.class Lcom/perm/kate/VideoFragment$6;
.super Ljava/lang/Object;
.source "VideoFragment.java"

# interfaces
.implements Lcom/perm/kate/VideoMenuCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/VideoFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/VideoFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/VideoFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/VideoFragment;

    .prologue
    .line 229
    iput-object p1, p0, Lcom/perm/kate/VideoFragment$6;->this$0:Lcom/perm/kate/VideoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public beforeDelete(J)V
    .locals 5
    .param p1, "video_id"    # J

    .prologue
    .line 232
    iget-object v1, p0, Lcom/perm/kate/VideoFragment$6;->this$0:Lcom/perm/kate/VideoFragment;

    iget-object v1, v1, Lcom/perm/kate/VideoFragment;->videos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Video;

    .line 233
    .local v0, "v":Lcom/perm/kate/api/Video;
    iget-wide v2, v0, Lcom/perm/kate/api/Video;->vid:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 234
    iget-object v1, p0, Lcom/perm/kate/VideoFragment$6;->this$0:Lcom/perm/kate/VideoFragment;

    iget-object v1, v1, Lcom/perm/kate/VideoFragment;->videos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 237
    .end local v0    # "v":Lcom/perm/kate/api/Video;
    :cond_1
    iget-object v1, p0, Lcom/perm/kate/VideoFragment$6;->this$0:Lcom/perm/kate/VideoFragment;

    invoke-static {v1}, Lcom/perm/kate/VideoFragment;->access$400(Lcom/perm/kate/VideoFragment;)V

    .line 238
    return-void
.end method

.method public userLikesChanged(JJZ)V
    .locals 7
    .param p1, "video_id"    # J
    .param p3, "owner_id"    # J
    .param p5, "user_likes"    # Z

    .prologue
    .line 242
    iget-object v1, p0, Lcom/perm/kate/VideoFragment$6;->this$0:Lcom/perm/kate/VideoFragment;

    iget-object v1, v1, Lcom/perm/kate/VideoFragment;->videos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Video;

    .line 243
    .local v0, "v":Lcom/perm/kate/api/Video;
    iget-wide v2, v0, Lcom/perm/kate/api/Video;->vid:J

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    .line 244
    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Video;->user_likes:Ljava/lang/Boolean;

    .line 245
    if-eqz p5, :cond_2

    .line 246
    iget-object v1, v0, Lcom/perm/kate/api/Video;->like_count:Ljava/lang/Integer;

    iget-object v1, v0, Lcom/perm/kate/api/Video;->like_count:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Video;->like_count:Ljava/lang/Integer;

    .line 249
    :goto_0
    sget-object v1, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v2, v0, Lcom/perm/kate/api/Video;->vid:J

    iget-wide v4, v0, Lcom/perm/kate/api/Video;->owner_id:J

    iget-object v6, v0, Lcom/perm/kate/api/Video;->like_count:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual/range {v1 .. v6}, Lcom/perm/kate/db/DataHelper;->updateVideoLikeCount(JJI)Z

    .line 252
    .end local v0    # "v":Lcom/perm/kate/api/Video;
    :cond_1
    iget-object v1, p0, Lcom/perm/kate/VideoFragment$6;->this$0:Lcom/perm/kate/VideoFragment;

    invoke-static {v1}, Lcom/perm/kate/VideoFragment;->access$400(Lcom/perm/kate/VideoFragment;)V

    .line 253
    return-void

    .line 248
    .restart local v0    # "v":Lcom/perm/kate/api/Video;
    :cond_2
    iget-object v1, v0, Lcom/perm/kate/api/Video;->like_count:Ljava/lang/Integer;

    iget-object v1, v0, Lcom/perm/kate/api/Video;->like_count:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/api/Video;->like_count:Ljava/lang/Integer;

    goto :goto_0
.end method
