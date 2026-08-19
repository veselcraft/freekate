.class Lcom/perm/kate/VideoAlbumActivity$3;
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

    .line 97
    iput-object p1, p0, Lcom/perm/kate/VideoAlbumActivity$3;->this$0:Lcom/perm/kate/VideoAlbumActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 109
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 110
    iget-object p1, p0, Lcom/perm/kate/VideoAlbumActivity$3;->this$0:Lcom/perm/kate/VideoAlbumActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 4

    .line 100
    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_0

    .line 101
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    .line 102
    iget-object p1, p0, Lcom/perm/kate/VideoAlbumActivity$3;->this$0:Lcom/perm/kate/VideoAlbumActivity;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    .line 103
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/VideoAlbumActivity$3;->this$0:Lcom/perm/kate/VideoAlbumActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 104
    iget-object p1, p0, Lcom/perm/kate/VideoAlbumActivity$3;->this$0:Lcom/perm/kate/VideoAlbumActivity;

    invoke-static {p1}, Lcom/perm/kate/VideoAlbumActivity;->access$700(Lcom/perm/kate/VideoAlbumActivity;)V

    return-void
.end method
