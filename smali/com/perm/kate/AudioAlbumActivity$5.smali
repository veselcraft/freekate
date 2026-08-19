.class Lcom/perm/kate/AudioAlbumActivity$5;
.super Ljava/lang/Object;
.source "AudioAlbumActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
.method constructor <init>(Lcom/perm/kate/AudioAlbumActivity;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/perm/kate/AudioAlbumActivity$5;->this$0:Lcom/perm/kate/AudioAlbumActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 106
    iget-object p1, p0, Lcom/perm/kate/AudioAlbumActivity$5;->this$0:Lcom/perm/kate/AudioAlbumActivity;

    invoke-static {p1}, Lcom/perm/kate/AudioAlbumActivity;->access$700(Lcom/perm/kate/AudioAlbumActivity;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 107
    iget-object p1, p0, Lcom/perm/kate/AudioAlbumActivity$5;->this$0:Lcom/perm/kate/AudioAlbumActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method
