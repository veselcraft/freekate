.class Lcom/perm/kate/AudioAlbumActivity$2;
.super Lcom/perm/kate/session/Callback;
.source "AudioAlbumActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/AudioAlbumActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AudioAlbumActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/AudioAlbumActivity;Landroid/app/Activity;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/perm/kate/AudioAlbumActivity$2;->this$0:Lcom/perm/kate/AudioAlbumActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 74
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 75
    iget-object p1, p0, Lcom/perm/kate/AudioAlbumActivity$2;->this$0:Lcom/perm/kate/AudioAlbumActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 4

    .line 65
    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_0

    .line 66
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    .line 67
    iget-object p1, p0, Lcom/perm/kate/AudioAlbumActivity$2;->this$0:Lcom/perm/kate/AudioAlbumActivity;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    .line 68
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/AudioAlbumActivity$2;->this$0:Lcom/perm/kate/AudioAlbumActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 69
    iget-object p1, p0, Lcom/perm/kate/AudioAlbumActivity$2;->this$0:Lcom/perm/kate/AudioAlbumActivity;

    invoke-static {p1}, Lcom/perm/kate/AudioAlbumActivity;->access$500(Lcom/perm/kate/AudioAlbumActivity;)V

    return-void
.end method
