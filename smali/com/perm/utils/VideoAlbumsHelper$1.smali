.class Lcom/perm/utils/VideoAlbumsHelper$1;
.super Lcom/perm/kate/session/Callback;
.source "VideoAlbumsHelper.java"


# instance fields
.field final synthetic val$activity:Lcom/perm/kate/BaseActivity;

.field final synthetic val$callback1:Lcom/perm/utils/VideoAlbumsHelper$VideoAlbumsCallback;

.field final synthetic val$offset:I

.field final synthetic val$owner_id:J

.field final synthetic val$video_id:J

.field final synthetic val$video_owner_id:J


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/perm/kate/BaseActivity;JJJLcom/perm/utils/VideoAlbumsHelper$VideoAlbumsCallback;I)V
    .locals 0

    .line 37
    iput-object p2, p0, Lcom/perm/utils/VideoAlbumsHelper$1;->val$activity:Lcom/perm/kate/BaseActivity;

    iput-wide p3, p0, Lcom/perm/utils/VideoAlbumsHelper$1;->val$owner_id:J

    iput-wide p5, p0, Lcom/perm/utils/VideoAlbumsHelper$1;->val$video_id:J

    iput-wide p7, p0, Lcom/perm/utils/VideoAlbumsHelper$1;->val$video_owner_id:J

    iput-object p9, p0, Lcom/perm/utils/VideoAlbumsHelper$1;->val$callback1:Lcom/perm/utils/VideoAlbumsHelper$VideoAlbumsCallback;

    iput p10, p0, Lcom/perm/utils/VideoAlbumsHelper$1;->val$offset:I

    invoke-direct {p0, p1}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 9

    .line 60
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 61
    iget-object p1, p0, Lcom/perm/utils/VideoAlbumsHelper$1;->val$activity:Lcom/perm/kate/BaseActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 62
    iget-object v1, p0, Lcom/perm/utils/VideoAlbumsHelper$1;->val$activity:Lcom/perm/kate/BaseActivity;

    iget-wide v2, p0, Lcom/perm/utils/VideoAlbumsHelper$1;->val$owner_id:J

    iget-wide v4, p0, Lcom/perm/utils/VideoAlbumsHelper$1;->val$video_id:J

    iget-wide v6, p0, Lcom/perm/utils/VideoAlbumsHelper$1;->val$video_owner_id:J

    iget-object v8, p0, Lcom/perm/utils/VideoAlbumsHelper$1;->val$callback1:Lcom/perm/utils/VideoAlbumsHelper$VideoAlbumsCallback;

    invoke-static/range {v1 .. v8}, Lcom/perm/utils/VideoAlbumsHelper;->access$200(Lcom/perm/kate/BaseActivity;JJJLcom/perm/utils/VideoAlbumsHelper$VideoAlbumsCallback;)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 10

    .line 41
    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    .line 43
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/AudioAlbum;

    .line 45
    iget-wide v2, v1, Lcom/perm/kate/api/AudioAlbum;->album_id:J

    const-wide/16 v4, -0x1

    cmp-long v6, v2, v4

    if-eqz v6, :cond_0

    .line 46
    invoke-static {}, Lcom/perm/utils/VideoAlbumsHelper;->access$000()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 50
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sget v0, Lcom/perm/utils/VideoAlbumsHelper;->page_size:I

    if-ne p1, v0, :cond_2

    .line 51
    iget-object v1, p0, Lcom/perm/utils/VideoAlbumsHelper$1;->val$activity:Lcom/perm/kate/BaseActivity;

    iget-wide v2, p0, Lcom/perm/utils/VideoAlbumsHelper$1;->val$owner_id:J

    iget-wide v4, p0, Lcom/perm/utils/VideoAlbumsHelper$1;->val$video_id:J

    iget-wide v6, p0, Lcom/perm/utils/VideoAlbumsHelper$1;->val$video_owner_id:J

    iget-object v8, p0, Lcom/perm/utils/VideoAlbumsHelper$1;->val$callback1:Lcom/perm/utils/VideoAlbumsHelper$VideoAlbumsCallback;

    iget p1, p0, Lcom/perm/utils/VideoAlbumsHelper$1;->val$offset:I

    add-int v9, p1, v0

    invoke-static/range {v1 .. v9}, Lcom/perm/utils/VideoAlbumsHelper;->access$100(Lcom/perm/kate/BaseActivity;JJJLcom/perm/utils/VideoAlbumsHelper$VideoAlbumsCallback;I)V

    return-void

    .line 54
    :cond_2
    iget-object p1, p0, Lcom/perm/utils/VideoAlbumsHelper$1;->val$activity:Lcom/perm/kate/BaseActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 55
    iget-object v1, p0, Lcom/perm/utils/VideoAlbumsHelper$1;->val$activity:Lcom/perm/kate/BaseActivity;

    iget-wide v2, p0, Lcom/perm/utils/VideoAlbumsHelper$1;->val$owner_id:J

    iget-wide v4, p0, Lcom/perm/utils/VideoAlbumsHelper$1;->val$video_id:J

    iget-wide v6, p0, Lcom/perm/utils/VideoAlbumsHelper$1;->val$video_owner_id:J

    iget-object v8, p0, Lcom/perm/utils/VideoAlbumsHelper$1;->val$callback1:Lcom/perm/utils/VideoAlbumsHelper$VideoAlbumsCallback;

    invoke-static/range {v1 .. v8}, Lcom/perm/utils/VideoAlbumsHelper;->access$200(Lcom/perm/kate/BaseActivity;JJJLcom/perm/utils/VideoAlbumsHelper$VideoAlbumsCallback;)V

    return-void
.end method
