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
    .locals 1
    .param p1, "this$0"    # Lcom/perm/kate/video_cache/VideoCacheActivity;

    .prologue
    .line 204
    iput-object p1, p0, Lcom/perm/kate/video_cache/VideoCacheActivity$6;->this$0:Lcom/perm/kate/video_cache/VideoCacheActivity;

    iput-object p2, p0, Lcom/perm/kate/video_cache/VideoCacheActivity$6;->val$menuItems:Ljava/util/ArrayList;

    iput-wide p3, p0, Lcom/perm/kate/video_cache/VideoCacheActivity$6;->val$video_id:J

    iput-wide p5, p0, Lcom/perm/kate/video_cache/VideoCacheActivity$6;->val$owner_id:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 207
    iget-object v0, p0, Lcom/perm/kate/video_cache/VideoCacheActivity$6;->val$menuItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/MenuItemDetails;

    iget v0, v0, Lcom/perm/kate/MenuItemDetails;->code:I

    packed-switch v0, :pswitch_data_0

    .line 219
    :goto_0
    return-void

    .line 209
    :pswitch_0
    iget-wide v0, p0, Lcom/perm/kate/video_cache/VideoCacheActivity$6;->val$video_id:J

    iget-wide v2, p0, Lcom/perm/kate/video_cache/VideoCacheActivity$6;->val$owner_id:J

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/perm/kate/video_cache/VideoCacheActivity$6;->this$0:Lcom/perm/kate/video_cache/VideoCacheActivity;

    invoke-static/range {v0 .. v5}, Lcom/perm/kate/VideoLogic;->fetchAndPlay(JJLjava/lang/String;Lcom/perm/kate/BaseActivity;)V

    goto :goto_0

    .line 212
    :pswitch_1
    iget-wide v0, p0, Lcom/perm/kate/video_cache/VideoCacheActivity$6;->val$video_id:J

    iget-wide v2, p0, Lcom/perm/kate/video_cache/VideoCacheActivity$6;->val$owner_id:J

    invoke-static {v0, v1, v2, v3}, Lcom/perm/kate/video_cache/VideoCache;->retry(JJ)V

    goto :goto_0

    .line 215
    :pswitch_2
    iget-wide v0, p0, Lcom/perm/kate/video_cache/VideoCacheActivity$6;->val$video_id:J

    iget-wide v2, p0, Lcom/perm/kate/video_cache/VideoCacheActivity$6;->val$owner_id:J

    invoke-static {v0, v1, v2, v3}, Lcom/perm/kate/video_cache/VideoCache;->remove(JJ)V

    .line 216
    iget-object v0, p0, Lcom/perm/kate/video_cache/VideoCacheActivity$6;->this$0:Lcom/perm/kate/video_cache/VideoCacheActivity;

    iget-wide v2, p0, Lcom/perm/kate/video_cache/VideoCacheActivity$6;->val$video_id:J

    iget-wide v4, p0, Lcom/perm/kate/video_cache/VideoCacheActivity$6;->val$owner_id:J

    invoke-static {v0, v2, v3, v4, v5}, Lcom/perm/kate/video_cache/VideoCacheActivity;->access$700(Lcom/perm/kate/video_cache/VideoCacheActivity;JJ)V

    goto :goto_0

    .line 207
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
