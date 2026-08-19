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

    .line 80
    iput-object p1, p0, Lcom/perm/kate/VideoAlbumActivity$2;->this$0:Lcom/perm/kate/VideoAlbumActivity;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 92
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 93
    iget-object p1, p0, Lcom/perm/kate/VideoAlbumActivity$2;->this$0:Lcom/perm/kate/VideoAlbumActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 1

    .line 83
    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    .line 84
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 85
    iget-object p1, p0, Lcom/perm/kate/VideoAlbumActivity$2;->this$0:Lcom/perm/kate/VideoAlbumActivity;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    .line 86
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/VideoAlbumActivity$2;->this$0:Lcom/perm/kate/VideoAlbumActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 87
    iget-object p1, p0, Lcom/perm/kate/VideoAlbumActivity$2;->this$0:Lcom/perm/kate/VideoAlbumActivity;

    invoke-static {p1}, Lcom/perm/kate/VideoAlbumActivity;->access$700(Lcom/perm/kate/VideoAlbumActivity;)V

    return-void
.end method
