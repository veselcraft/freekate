.class Lcom/perm/utils/VideoAlbumsHelper$3;
.super Lcom/perm/kate/session/Callback;
.source "VideoAlbumsHelper.java"


# instance fields
.field final synthetic val$activity:Lcom/perm/kate/BaseActivity;

.field final synthetic val$callback1:Lcom/perm/utils/VideoAlbumsHelper$VideoAlbumsCallback;

.field final synthetic val$owner_id:J

.field final synthetic val$video_id:J

.field final synthetic val$video_owner_id:J


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/perm/kate/BaseActivity;JJJLcom/perm/utils/VideoAlbumsHelper$VideoAlbumsCallback;)V
    .locals 0

    .line 77
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

    .line 90
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 91
    iget-object p1, p0, Lcom/perm/utils/VideoAlbumsHelper$3;->val$activity:Lcom/perm/kate/BaseActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 92
    iget-object v1, p0, Lcom/perm/utils/VideoAlbumsHelper$3;->val$activity:Lcom/perm/kate/BaseActivity;

    iget-wide v2, p0, Lcom/perm/utils/VideoAlbumsHelper$3;->val$owner_id:J

    iget-wide v4, p0, Lcom/perm/utils/VideoAlbumsHelper$3;->val$video_id:J

    iget-wide v6, p0, Lcom/perm/utils/VideoAlbumsHelper$3;->val$video_owner_id:J

    iget-object v8, p0, Lcom/perm/utils/VideoAlbumsHelper$3;->val$callback1:Lcom/perm/utils/VideoAlbumsHelper$VideoAlbumsCallback;

    invoke-static/range {v1 .. v8}, Lcom/perm/utils/VideoAlbumsHelper;->access$200(Lcom/perm/kate/BaseActivity;JJJLcom/perm/utils/VideoAlbumsHelper$VideoAlbumsCallback;)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 9

    .line 81
    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    .line 83
    invoke-static {p1}, Lcom/perm/utils/VideoAlbumsHelper;->access$302(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 84
    :cond_0
    iget-object p1, p0, Lcom/perm/utils/VideoAlbumsHelper$3;->val$activity:Lcom/perm/kate/BaseActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 85
    iget-object v1, p0, Lcom/perm/utils/VideoAlbumsHelper$3;->val$activity:Lcom/perm/kate/BaseActivity;

    iget-wide v2, p0, Lcom/perm/utils/VideoAlbumsHelper$3;->val$owner_id:J

    iget-wide v4, p0, Lcom/perm/utils/VideoAlbumsHelper$3;->val$video_id:J

    iget-wide v6, p0, Lcom/perm/utils/VideoAlbumsHelper$3;->val$video_owner_id:J

    iget-object v8, p0, Lcom/perm/utils/VideoAlbumsHelper$3;->val$callback1:Lcom/perm/utils/VideoAlbumsHelper$VideoAlbumsCallback;

    invoke-static/range {v1 .. v8}, Lcom/perm/utils/VideoAlbumsHelper;->access$200(Lcom/perm/kate/BaseActivity;JJJLcom/perm/utils/VideoAlbumsHelper$VideoAlbumsCallback;)V

    return-void
.end method
