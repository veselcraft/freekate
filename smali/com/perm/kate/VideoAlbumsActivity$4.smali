.class Lcom/perm/kate/VideoAlbumsActivity$4;
.super Ljava/lang/Object;
.source "VideoAlbumsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/VideoAlbumsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/VideoAlbumsActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/VideoAlbumsActivity;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/perm/kate/VideoAlbumsActivity$4;->this$0:Lcom/perm/kate/VideoAlbumsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 155
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/api/AudioAlbum;

    .line 156
    iget-wide v0, p1, Lcom/perm/kate/api/AudioAlbum;->album_id:J

    iget-object p1, p0, Lcom/perm/kate/VideoAlbumsActivity$4;->this$0:Lcom/perm/kate/VideoAlbumsActivity;

    invoke-static {p1}, Lcom/perm/kate/VideoAlbumsActivity;->access$100(Lcom/perm/kate/VideoAlbumsActivity;)J

    move-result-wide v2

    iget-object v5, p0, Lcom/perm/kate/VideoAlbumsActivity$4;->this$0:Lcom/perm/kate/VideoAlbumsActivity;

    iget-boolean v4, v5, Lcom/perm/kate/VideoAlbumsActivity;->select_video:Z

    invoke-static/range {v0 .. v5}, Lcom/perm/kate/Helper;->openVideoAlbum(JJZLandroid/app/Activity;)V

    return-void
.end method
