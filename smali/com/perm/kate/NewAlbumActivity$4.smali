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

    .line 156
    iput-object p1, p0, Lcom/perm/kate/NewAlbumActivity$4;->this$0:Lcom/perm/kate/NewAlbumActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 159
    iget-object p1, p0, Lcom/perm/kate/NewAlbumActivity$4;->this$0:Lcom/perm/kate/NewAlbumActivity;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 160
    new-instance p1, Lcom/perm/kate/NewAlbumActivity$4$1;

    invoke-direct {p1, p0}, Lcom/perm/kate/NewAlbumActivity$4$1;-><init>(Lcom/perm/kate/NewAlbumActivity$4;)V

    .line 174
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method
