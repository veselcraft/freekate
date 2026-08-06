.class final Lcom/perm/utils/VideoAlbumsHelper$3;
.super Lcom/perm/kate/session/Callback;
.source "VideoAlbumsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/utils/VideoAlbumsHelper;->getAlbumsByVideo(Lcom/perm/kate/BaseActivity;JJJLcom/perm/utils/VideoAlbumsHelper$VideoAlbumsCallback;)V
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
    .line 78
    iput-object p2, p0, Lcom/perm/utils/VideoAlbumsHelper$3;->val$activity:Lcom/perm/kate/BaseActivity;

    iput-wide p3, p0, Lcom/perm/utils/VideoAlbumsHelper$3;->val$owner_id:J

    iput-wide p5, p0, Lcom/perm/utils/VideoAlbumsHelper$3;->val$video_id:J

    iput-wide p7, p0, Lcom/perm/utils/VideoAlbumsHelper$3;->val$video_owner_id:J

    iput-object p9, p0, Lcom/perm/utils/VideoAlbumsHelper$3;->val$callback1:Lcom/perm/utils/VideoAlbumsHelper$VideoAlbumsCallback;

    invoke-direct {p0, p1}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 9
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 92
    iget-object v0, p0, Lcom/perm/utils/VideoAlbumsHelper$3;->val$activity:Lcom/perm/kate/BaseActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 93
    iget-object v1, p0, Lcom/perm/utils/VideoAlbumsHelper$3;->val$activity:Lcom/perm/kate/BaseActivity;

    iget-wide v2, p0, Lcom/perm/utils/VideoAlbumsHelper$3;->val$owner_id:J

    iget-wide v4, p0, Lcom/perm/utils/VideoAlbumsHelper$3;->val$video_id:J

    iget-wide v6, p0, Lcom/perm/utils/VideoAlbumsHelper$3;->val$video_owner_id:J

    iget-object v8, p0, Lcom/perm/utils/VideoAlbumsHelper$3;->val$callback1:Lcom/perm/utils/VideoAlbumsHelper$VideoAlbumsCallback;

    invoke-static/range {v1 .. v8}, Lcom/perm/utils/VideoAlbumsHelper;->access$100(Lcom/perm/kate/BaseActivity;JJJLcom/perm/utils/VideoAlbumsHelper$VideoAlbumsCallback;)V

    .line 94
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 9
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 82
    move-object v0, p1

    check-cast v0, Ljava/util/ArrayList;

    .line 83
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-eqz v0, :cond_0

    .line 84
    invoke-static {v0}, Lcom/perm/utils/VideoAlbumsHelper;->access$202(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 85
    :cond_0
    iget-object v1, p0, Lcom/perm/utils/VideoAlbumsHelper$3;->val$activity:Lcom/perm/kate/BaseActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 86
    iget-object v1, p0, Lcom/perm/utils/VideoAlbumsHelper$3;->val$activity:Lcom/perm/kate/BaseActivity;

    iget-wide v2, p0, Lcom/perm/utils/VideoAlbumsHelper$3;->val$owner_id:J

    iget-wide v4, p0, Lcom/perm/utils/VideoAlbumsHelper$3;->val$video_id:J

    iget-wide v6, p0, Lcom/perm/utils/VideoAlbumsHelper$3;->val$video_owner_id:J

    iget-object v8, p0, Lcom/perm/utils/VideoAlbumsHelper$3;->val$callback1:Lcom/perm/utils/VideoAlbumsHelper$VideoAlbumsCallback;

    invoke-static/range {v1 .. v8}, Lcom/perm/utils/VideoAlbumsHelper;->access$100(Lcom/perm/kate/BaseActivity;JJJLcom/perm/utils/VideoAlbumsHelper$VideoAlbumsCallback;)V

    .line 87
    return-void
.end method
