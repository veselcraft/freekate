.class Lcom/perm/kate/NewAlbumActivity$4;
.super Ljava/lang/Object;
.source "NewAlbumActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/NewAlbumActivity;
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
    .line 153
    iput-object p1, p0, Lcom/perm/kate/NewAlbumActivity$4;->this$0:Lcom/perm/kate/NewAlbumActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/perm/kate/NewAlbumActivity$4;->this$0:Lcom/perm/kate/NewAlbumActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/perm/kate/NewAlbumActivity;->showProgressBar(Z)V

    .line 157
    new-instance v0, Lcom/perm/kate/NewAlbumActivity$4$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/NewAlbumActivity$4$1;-><init>(Lcom/perm/kate/NewAlbumActivity$4;)V

    .line 171
    invoke-virtual {v0}, Lcom/perm/kate/NewAlbumActivity$4$1;->start()V

    .line 172
    return-void
.end method
