.class Lcom/perm/kate/video_cache/VideoCacheActivity$2$1;
.super Ljava/lang/Object;
.source "VideoCacheActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/video_cache/VideoCacheActivity$2;->onProgressChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/video_cache/VideoCacheActivity$2;


# direct methods
.method constructor <init>(Lcom/perm/kate/video_cache/VideoCacheActivity$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/perm/kate/video_cache/VideoCacheActivity$2;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/perm/kate/video_cache/VideoCacheActivity$2$1;->this$1:Lcom/perm/kate/video_cache/VideoCacheActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 83
    .local v0, "now":J
    iget-object v2, p0, Lcom/perm/kate/video_cache/VideoCacheActivity$2$1;->this$1:Lcom/perm/kate/video_cache/VideoCacheActivity$2;

    iget-object v2, v2, Lcom/perm/kate/video_cache/VideoCacheActivity$2;->this$0:Lcom/perm/kate/video_cache/VideoCacheActivity;

    iget-wide v2, v2, Lcom/perm/kate/video_cache/VideoCacheActivity;->last_notify:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x3e8

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 84
    iget-object v2, p0, Lcom/perm/kate/video_cache/VideoCacheActivity$2$1;->this$1:Lcom/perm/kate/video_cache/VideoCacheActivity$2;

    iget-object v2, v2, Lcom/perm/kate/video_cache/VideoCacheActivity$2;->this$0:Lcom/perm/kate/video_cache/VideoCacheActivity;

    invoke-static {v2}, Lcom/perm/kate/video_cache/VideoCacheActivity;->access$100(Lcom/perm/kate/video_cache/VideoCacheActivity;)Lcom/perm/kate/VideoListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/perm/kate/VideoListAdapter;->notifyDataSetChanged()V

    .line 85
    iget-object v2, p0, Lcom/perm/kate/video_cache/VideoCacheActivity$2$1;->this$1:Lcom/perm/kate/video_cache/VideoCacheActivity$2;

    iget-object v2, v2, Lcom/perm/kate/video_cache/VideoCacheActivity$2;->this$0:Lcom/perm/kate/video_cache/VideoCacheActivity;

    iput-wide v0, v2, Lcom/perm/kate/video_cache/VideoCacheActivity;->last_notify:J

    .line 87
    :cond_0
    return-void
.end method
