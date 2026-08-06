.class Lcom/perm/kate/AudioAlbumActivity$4;
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
    .param p1, "this$0"    # Lcom/perm/kate/AudioAlbumActivity;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/perm/kate/AudioAlbumActivity$4;->this$0:Lcom/perm/kate/AudioAlbumActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 105
    iget-object v0, p0, Lcom/perm/kate/AudioAlbumActivity$4;->this$0:Lcom/perm/kate/AudioAlbumActivity;

    invoke-static {v0}, Lcom/perm/kate/AudioAlbumActivity;->access$600(Lcom/perm/kate/AudioAlbumActivity;)V

    .line 106
    return-void
.end method
