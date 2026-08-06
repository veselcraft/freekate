.class Lcom/perm/kate/VideoAlbumActivity$2;
.super Lcom/perm/kate/session/Callback;
.source "VideoAlbumActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/VideoAlbumActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/VideoAlbumActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/VideoAlbumActivity;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/VideoAlbumActivity;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/perm/kate/VideoAlbumActivity$2;->this$0:Lcom/perm/kate/VideoAlbumActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 75
    iget-object v0, p0, Lcom/perm/kate/VideoAlbumActivity$2;->this$0:Lcom/perm/kate/VideoAlbumActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/VideoAlbumActivity;->showProgressBar(Z)V

    .line 76
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 6
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 65
    move-object v0, p1

    check-cast v0, Ljava/lang/Long;

    .line 66
    .local v0, "album_id":Ljava/lang/Long;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 67
    iget-object v1, p0, Lcom/perm/kate/VideoAlbumActivity$2;->this$0:Lcom/perm/kate/VideoAlbumActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/perm/kate/VideoAlbumActivity;->setResult(I)V

    .line 68
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/VideoAlbumActivity$2;->this$0:Lcom/perm/kate/VideoAlbumActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/perm/kate/VideoAlbumActivity;->showProgressBar(Z)V

    .line 69
    iget-object v1, p0, Lcom/perm/kate/VideoAlbumActivity$2;->this$0:Lcom/perm/kate/VideoAlbumActivity;

    invoke-static {v1}, Lcom/perm/kate/VideoAlbumActivity;->access$400(Lcom/perm/kate/VideoAlbumActivity;)V

    .line 70
    return-void
.end method
