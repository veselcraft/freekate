.class Lcom/perm/kate/VideoAlbumActivity$3;
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
    .param p1, "this$0"    # Lcom/perm/kate/VideoAlbumActivity;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/perm/kate/VideoAlbumActivity$3;->this$0:Lcom/perm/kate/VideoAlbumActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/perm/kate/VideoAlbumActivity$3;->this$0:Lcom/perm/kate/VideoAlbumActivity;

    invoke-static {v0}, Lcom/perm/kate/VideoAlbumActivity;->access$500(Lcom/perm/kate/VideoAlbumActivity;)V

    .line 83
    return-void
.end method
