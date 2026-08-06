.class Lcom/perm/kate/AudioAlbumActivity$3;
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
    .param p1, "this$0"    # Lcom/perm/kate/AudioAlbumActivity;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/perm/kate/AudioAlbumActivity$3;->this$0:Lcom/perm/kate/AudioAlbumActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 97
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 98
    iget-object v0, p0, Lcom/perm/kate/AudioAlbumActivity$3;->this$0:Lcom/perm/kate/AudioAlbumActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/AudioAlbumActivity;->showProgressBar(Z)V

    .line 99
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 88
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    .line 89
    .local v0, "code":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 90
    iget-object v1, p0, Lcom/perm/kate/AudioAlbumActivity$3;->this$0:Lcom/perm/kate/AudioAlbumActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/perm/kate/AudioAlbumActivity;->setResult(I)V

    .line 91
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/AudioAlbumActivity$3;->this$0:Lcom/perm/kate/AudioAlbumActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/perm/kate/AudioAlbumActivity;->showProgressBar(Z)V

    .line 92
    iget-object v1, p0, Lcom/perm/kate/AudioAlbumActivity$3;->this$0:Lcom/perm/kate/AudioAlbumActivity;

    invoke-static {v1}, Lcom/perm/kate/AudioAlbumActivity;->access$500(Lcom/perm/kate/AudioAlbumActivity;)V

    .line 93
    return-void
.end method
