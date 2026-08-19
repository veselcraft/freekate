.class Lcom/perm/kate/VideoFragment$6;
.super Ljava/lang/Object;
.source "VideoFragment.java"

# interfaces
.implements Lcom/perm/kate/VideoMenuCallback;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/VideoFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/VideoFragment;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/perm/kate/VideoFragment$6;->this$0:Lcom/perm/kate/VideoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public beforeDelete(J)V
    .locals 5

    .line 236
    iget-object v0, p0, Lcom/perm/kate/VideoFragment$6;->this$0:Lcom/perm/kate/VideoFragment;

    iget-object v0, v0, Lcom/perm/kate/VideoFragment;->videos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/Video;

    .line 237
    iget-wide v2, v1, Lcom/perm/kate/api/Video;->vid:J

    cmp-long v4, v2, p1

    if-nez v4, :cond_0

    .line 238
    iget-object p1, p0, Lcom/perm/kate/VideoFragment$6;->this$0:Lcom/perm/kate/VideoFragment;

    iget-object p1, p1, Lcom/perm/kate/VideoFragment;->videos:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 241
    :cond_1
    iget-object p1, p0, Lcom/perm/kate/VideoFragment$6;->this$0:Lcom/perm/kate/VideoFragment;

    invoke-static {p1}, Lcom/perm/kate/VideoFragment;->access$300(Lcom/perm/kate/VideoFragment;)V

    return-void
.end method

.method public faveChanged(JJZ)V
    .locals 0

    return-void
.end method

.method public userLikesChanged(JJZ)V
    .locals 6

    .line 246
    iget-object p3, p0, Lcom/perm/kate/VideoFragment$6;->this$0:Lcom/perm/kate/VideoFragment;

    iget-object p3, p3, Lcom/perm/kate/VideoFragment;->videos:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/perm/kate/api/Video;

    .line 247
    iget-wide v0, p4, Lcom/perm/kate/api/Video;->vid:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    .line 248
    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p4, Lcom/perm/kate/api/Video;->user_likes:Ljava/lang/Boolean;

    .line 250
    iget-object p1, p4, Lcom/perm/kate/api/Video;->like_count:Ljava/lang/Integer;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 251
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p4, Lcom/perm/kate/api/Video;->like_count:Ljava/lang/Integer;

    :cond_1
    if-eqz p5, :cond_2

    .line 253
    iget-object p1, p4, Lcom/perm/kate/api/Video;->like_count:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p4, Lcom/perm/kate/api/Video;->like_count:Ljava/lang/Integer;

    goto :goto_0

    .line 255
    :cond_2
    iget-object p1, p4, Lcom/perm/kate/api/Video;->like_count:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p4, Lcom/perm/kate/api/Video;->like_count:Ljava/lang/Integer;

    .line 256
    :goto_0
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-wide v1, p4, Lcom/perm/kate/api/Video;->vid:J

    iget-wide v3, p4, Lcom/perm/kate/api/Video;->owner_id:J

    iget-object p1, p4, Lcom/perm/kate/api/Video;->like_count:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lcom/perm/kate/db/DataHelper;->updateVideoLikeCount(JJI)Z

    .line 259
    :cond_3
    iget-object p1, p0, Lcom/perm/kate/VideoFragment$6;->this$0:Lcom/perm/kate/VideoFragment;

    invoke-static {p1}, Lcom/perm/kate/VideoFragment;->access$300(Lcom/perm/kate/VideoFragment;)V

    return-void
.end method
