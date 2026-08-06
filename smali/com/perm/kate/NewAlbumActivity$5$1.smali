.class Lcom/perm/kate/NewAlbumActivity$5$1;
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
    .param p1, "this$1"    # Lcom/perm/kate/NewAlbumActivity$5;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/perm/kate/NewAlbumActivity$5$1;->this$1:Lcom/perm/kate/NewAlbumActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/perm/kate/NewAlbumActivity$5$1;->this$1:Lcom/perm/kate/NewAlbumActivity$5;

    iget-object v0, v0, Lcom/perm/kate/NewAlbumActivity$5;->this$0:Lcom/perm/kate/NewAlbumActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/NewAlbumActivity;->showProgressBar(Z)V

    .line 194
    iget-object v0, p0, Lcom/perm/kate/NewAlbumActivity$5$1;->this$1:Lcom/perm/kate/NewAlbumActivity$5;

    iget-object v0, v0, Lcom/perm/kate/NewAlbumActivity$5;->this$0:Lcom/perm/kate/NewAlbumActivity;

    invoke-virtual {v0}, Lcom/perm/kate/NewAlbumActivity;->finish()V

    .line 195
    return-void
.end method
