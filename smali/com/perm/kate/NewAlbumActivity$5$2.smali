.class Lcom/perm/kate/NewAlbumActivity$5$2;
.super Ljava/lang/Object;
.source "NewAlbumActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/NewAlbumActivity$5;->ready(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/NewAlbumActivity$5;


# direct methods
.method constructor <init>(Lcom/perm/kate/NewAlbumActivity$5;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/perm/kate/NewAlbumActivity$5$2;->this$1:Lcom/perm/kate/NewAlbumActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 210
    iget-object v0, p0, Lcom/perm/kate/NewAlbumActivity$5$2;->this$1:Lcom/perm/kate/NewAlbumActivity$5;

    iget-object v0, v0, Lcom/perm/kate/NewAlbumActivity$5;->this$0:Lcom/perm/kate/NewAlbumActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 211
    iget-object v0, p0, Lcom/perm/kate/NewAlbumActivity$5$2;->this$1:Lcom/perm/kate/NewAlbumActivity$5;

    iget-object v0, v0, Lcom/perm/kate/NewAlbumActivity$5;->this$0:Lcom/perm/kate/NewAlbumActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
