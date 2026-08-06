.class Lcom/perm/kate/AudioAlbumActivity$8;
.super Ljava/lang/Object;
.source "AudioAlbumActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/AudioAlbumActivity;->finishOnUiThread()V
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
    .line 149
    iput-object p1, p0, Lcom/perm/kate/AudioAlbumActivity$8;->this$0:Lcom/perm/kate/AudioAlbumActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/perm/kate/AudioAlbumActivity$8;->this$0:Lcom/perm/kate/AudioAlbumActivity;

    invoke-virtual {v0}, Lcom/perm/kate/AudioAlbumActivity;->finish()V

    .line 153
    return-void
.end method
