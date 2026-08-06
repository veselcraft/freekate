.class final Lcom/perm/utils/VideoAlbumsHelper$1;
.super Lcom/perm/kate/session/Callback;
.source "VideoAlbumsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/utils/VideoAlbumsHelper;->getAlbums(Lcom/perm/kate/BaseActivity;JJJLcom/perm/utils/VideoAlbumsHelper$VideoAlbumsCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Lcom/perm/kate/BaseActivity;

.field final synthetic val$callback1:Lcom/perm/utils/VideoAlbumsHelper$VideoAlbumsCallback;

.field final synthetic val$owner_id:J

.field final synthetic val$video_id:J

.field final synthetic val$video_owner_id:J


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/perm/kate/BaseActivity;JJJLcom/perm/utils/VideoAlbumsHelper$VideoAlbumsCallback;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 42
    iput-object p2, p0, Lcom/perm/utils/VideoAlbumsHelper$1;->val$activity:Lcom/perm/kate/BaseActivity;

    iput-wide p3, p0, Lcom/perm/utils/VideoAlbumsHelper$1;->val$owner_id:J

    iput-wide p5, p0, Lcom/perm/utils/VideoAlbumsHelper$1;->val$video_id:J

    iput-wide p7, p0, Lcom/perm/utils/VideoAlbumsHelper$1;->val$video_owner_id:J

    iput-object p9, p0, Lcom/perm/utils/VideoAlbumsHelper$1;->val$callback1:Lcom/perm/utils/VideoAlbumsHelper$VideoAlbumsCallback;

    invoke-direct {p0, p1}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 9
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 61
    iget-object v0, p0, Lcom/perm/utils/VideoAlbumsHelper$1;->val$activity:Lcom/perm/kate/BaseActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 62
    iget-object v1, p0, Lcom/perm/utils/VideoAlbumsHelper$1;->val$activity:Lcom/perm/kate/BaseActivity;

    iget-wide v2, p0, Lcom/perm/utils/VideoAlbumsHelper$1;->val$owner_id:J

    iget-wide v4, p0, Lcom/perm/utils/VideoAlbumsHelper$1;->val$video_id:J

    iget-wide v6, p0, Lcom/perm/utils/VideoAlbumsHelper$1;->val$video_owner_id:J

    iget-object v8, p0, Lcom/perm/utils/VideoAlbumsHelper$1;->val$callback1:Lcom/perm/utils/VideoAlbumsHelper$VideoAlbumsCallback;

    invoke-static/range {v1 .. v8}, Lcom/perm/utils/VideoAlbumsHelper;->access$100(Lcom/perm/kate/BaseActivity;JJJLcom/perm/utils/VideoAlbumsHelper$VideoAlbumsCallback;)V

    .line 63
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 10
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 46
    move-object v9, p1

    check-cast v9, Ljava/util/ArrayList;

    .line 47
    .local v9, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/AudioAlbum;>;"
    if-eqz v9, :cond_1

    .line 48
    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/AudioAlbum;

    .line 50
    .local v0, "a":Lcom/perm/kate/api/AudioAlbum;
    iget-wide v2, v0, Lcom/perm/kate/api/AudioAlbum;->album_id:J

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 51
    invoke-static {}, Lcom/perm/utils/VideoAlbumsHelper;->access$000()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 54
    .end local v0    # "a":Lcom/perm/kate/api/AudioAlbum;
    :cond_1
    iget-object v1, p0, Lcom/perm/utils/VideoAlbumsHelper$1;->val$activity:Lcom/perm/kate/BaseActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 55
    iget-object v1, p0, Lcom/perm/utils/VideoAlbumsHelper$1;->val$activity:Lcom/perm/kate/BaseActivity;

    iget-wide v2, p0, Lcom/perm/utils/VideoAlbumsHelper$1;->val$owner_id:J

    iget-wide v4, p0, Lcom/perm/utils/VideoAlbumsHelper$1;->val$video_id:J

    iget-wide v6, p0, Lcom/perm/utils/VideoAlbumsHelper$1;->val$video_owner_id:J

    iget-object v8, p0, Lcom/perm/utils/VideoAlbumsHelper$1;->val$callback1:Lcom/perm/utils/VideoAlbumsHelper$VideoAlbumsCallback;

    invoke-static/range {v1 .. v8}, Lcom/perm/utils/VideoAlbumsHelper;->access$100(Lcom/perm/kate/BaseActivity;JJJLcom/perm/utils/VideoAlbumsHelper$VideoAlbumsCallback;)V

    .line 56
    return-void
.end method
