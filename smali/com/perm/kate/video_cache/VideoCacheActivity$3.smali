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

    .line 102
    iput-object p1, p0, Lcom/perm/kate/video_cache/VideoCacheActivity$3;->this$0:Lcom/perm/kate/video_cache/VideoCacheActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 105
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 106
    array-length p2, p1

    const/4 p3, 0x5

    if-ne p2, p3, :cond_0

    const/4 p2, 0x0

    .line 107
    aget-object p2, p1, p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    const/4 p4, 0x1

    .line 108
    aget-object p1, p1, p4

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p4

    .line 109
    iget-object p1, p0, Lcom/perm/kate/video_cache/VideoCacheActivity$3;->this$0:Lcom/perm/kate/video_cache/VideoCacheActivity;

    invoke-static {p1, p2, p3, p4, p5}, Lcom/perm/kate/video_cache/VideoCacheActivity;->access$300(Lcom/perm/kate/video_cache/VideoCacheActivity;JJ)V

    :cond_0
    return-void
.end method
