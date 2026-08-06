.class Lcom/perm/kate/VideoAlbumActivity$7;
.super Ljava/lang/Object;
.source "VideoAlbumActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/VideoAlbumActivity;->finishOnUiThread()V
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
    .line 126
    iput-object p1, p0, Lcom/perm/kate/VideoAlbumActivity$7;->this$0:Lcom/perm/kate/VideoAlbumActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/perm/kate/VideoAlbumActivity$7;->this$0:Lcom/perm/kate/VideoAlbumActivity;

    invoke-virtual {v0}, Lcom/perm/kate/VideoAlbumActivity;->finish()V

    .line 130
    return-void
.end method
