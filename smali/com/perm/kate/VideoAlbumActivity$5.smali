.class Lcom/perm/kate/VideoAlbumActivity$5;
.super Ljava/lang/Object;
.source "VideoAlbumActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
.method constructor <init>(Lcom/perm/kate/VideoAlbumActivity;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/perm/kate/VideoAlbumActivity$5;->this$0:Lcom/perm/kate/VideoAlbumActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 124
    iget-object p1, p0, Lcom/perm/kate/VideoAlbumActivity$5;->this$0:Lcom/perm/kate/VideoAlbumActivity;

    invoke-static {p1}, Lcom/perm/kate/VideoAlbumActivity;->access$900(Lcom/perm/kate/VideoAlbumActivity;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 125
    iget-object p1, p0, Lcom/perm/kate/VideoAlbumActivity$5;->this$0:Lcom/perm/kate/VideoAlbumActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
