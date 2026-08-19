.class Lcom/perm/kate/video_cache/VideoCacheActivity$6;
.super Ljava/lang/Object;
.source "VideoCacheActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/video_cache/VideoCacheActivity;->displayContextMenu(JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/video_cache/VideoCacheActivity;

.field final synthetic val$menuItems:Ljava/util/ArrayList;

.field final synthetic val$owner_id:J

.field final synthetic val$video_id:J


# direct methods
.method constructor <init>(Lcom/perm/kate/video_cache/VideoCacheActivity;Ljava/util/ArrayList;JJ)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/perm/kate/video_cache/VideoCacheActivity$6;->this$0:Lcom/perm/kate/video_cache/VideoCacheActivity;

    iput-object p2, p0, Lcom/perm/kate/video_cache/VideoCacheActivity$6;->val$menuItems:Ljava/util/ArrayList;

    iput-wide p3, p0, Lcom/perm/kate/video_cache/VideoCacheActivity$6;->val$video_id:J

    iput-wide p5, p0, Lcom/perm/kate/video_cache/VideoCacheActivity$6;->val$owner_id:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8

    .line 208
    iget-object p1, p0, Lcom/perm/kate/video_cache/VideoCacheActivity$6;->val$menuItems:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/MenuItemDetails;

    iget p1, p1, Lcom/perm/kate/MenuItemDetails;->code:I

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 216
    :cond_0
    iget-wide p1, p0, Lcom/perm/kate/video_cache/VideoCacheActivity$6;->val$video_id:J

    iget-wide v0, p0, Lcom/perm/kate/video_cache/VideoCacheActivity$6;->val$owner_id:J

    invoke-static {p1, p2, v0, v1}, Lcom/perm/kate/video_cache/VideoCache;->remove(JJ)V

    .line 217
    iget-object p1, p0, Lcom/perm/kate/video_cache/VideoCacheActivity$6;->this$0:Lcom/perm/kate/video_cache/VideoCacheActivity;

    iget-wide v0, p0, Lcom/perm/kate/video_cache/VideoCacheActivity$6;->val$video_id:J

    iget-wide v2, p0, Lcom/perm/kate/video_cache/VideoCacheActivity$6;->val$owner_id:J

    invoke-static {p1, v0, v1, v2, v3}, Lcom/perm/kate/video_cache/VideoCacheActivity;->access$700(Lcom/perm/kate/video_cache/VideoCacheActivity;JJ)V

    goto :goto_0

    .line 213
    :cond_1
    iget-wide p1, p0, Lcom/perm/kate/video_cache/VideoCacheActivity$6;->val$video_id:J

    iget-wide v0, p0, Lcom/perm/kate/video_cache/VideoCacheActivity$6;->val$owner_id:J

    invoke-static {p1, p2, v0, v1}, Lcom/perm/kate/video_cache/VideoCache;->retry(JJ)V

    goto :goto_0

    .line 210
    :cond_2
    iget-wide v2, p0, Lcom/perm/kate/video_cache/VideoCacheActivity$6;->val$video_id:J

    iget-wide v4, p0, Lcom/perm/kate/video_cache/VideoCacheActivity$6;->val$owner_id:J

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/perm/kate/video_cache/VideoCacheActivity$6;->this$0:Lcom/perm/kate/video_cache/VideoCacheActivity;

    invoke-static/range {v2 .. v7}, Lcom/perm/kate/VideoLogic;->fetchAndPlay(JJLjava/lang/String;Lcom/perm/kate/BaseActivity;)V

    :goto_0
    return-void
.end method
