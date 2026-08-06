.class Lcom/perm/kate/video_cache/VideoCacheActivity$3;
.super Ljava/lang/Object;
.source "VideoCacheActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/video_cache/VideoCacheActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/video_cache/VideoCacheActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/video_cache/VideoCacheActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/video_cache/VideoCacheActivity;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/perm/kate/video_cache/VideoCacheActivity$3;->this$0:Lcom/perm/kate/video_cache/VideoCacheActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 105
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    move-object v2, v3

    check-cast v2, [Ljava/lang/Object;

    .line 106
    .local v2, "tags":[Ljava/lang/Object;
    if-eqz v2, :cond_0

    array-length v3, v2

    const/4 v6, 0x5

    if-ne v3, v6, :cond_0

    .line 107
    const/4 v3, 0x0

    aget-object v3, v2, v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 108
    .local v4, "video_id":J
    const/4 v3, 0x1

    aget-object v3, v2, v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 109
    .local v0, "owner_id":J
    iget-object v3, p0, Lcom/perm/kate/video_cache/VideoCacheActivity$3;->this$0:Lcom/perm/kate/video_cache/VideoCacheActivity;

    invoke-static {v3, v4, v5, v0, v1}, Lcom/perm/kate/video_cache/VideoCacheActivity;->access$300(Lcom/perm/kate/video_cache/VideoCacheActivity;JJ)V

    .line 111
    .end local v0    # "owner_id":J
    .end local v4    # "video_id":J
    :cond_0
    return-void
.end method
