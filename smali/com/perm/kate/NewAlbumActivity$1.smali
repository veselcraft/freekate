.class Lcom/perm/kate/NewAlbumActivity$1;
.super Ljava/lang/Thread;
.source "NewAlbumActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/NewAlbumActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NewAlbumActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/NewAlbumActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/NewAlbumActivity;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/perm/kate/NewAlbumActivity$1;->this$0:Lcom/perm/kate/NewAlbumActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/perm/kate/NewAlbumActivity$1;->this$0:Lcom/perm/kate/NewAlbumActivity;

    invoke-static {v0}, Lcom/perm/utils/FriendsListsHelper;->checkFriendsLists(Lcom/perm/kate/BaseActivity;)V

    .line 71
    iget-object v0, p0, Lcom/perm/kate/NewAlbumActivity$1;->this$0:Lcom/perm/kate/NewAlbumActivity;

    new-instance v1, Lcom/perm/kate/NewAlbumActivity$1$1;

    invoke-direct {v1, p0}, Lcom/perm/kate/NewAlbumActivity$1$1;-><init>(Lcom/perm/kate/NewAlbumActivity$1;)V

    invoke-virtual {v0, v1}, Lcom/perm/kate/NewAlbumActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 78
    return-void
.end method
