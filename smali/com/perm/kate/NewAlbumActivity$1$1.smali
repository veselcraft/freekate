.class Lcom/perm/kate/NewAlbumActivity$1$1;
.super Ljava/lang/Object;
.source "NewAlbumActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/NewAlbumActivity$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/NewAlbumActivity$1;


# direct methods
.method constructor <init>(Lcom/perm/kate/NewAlbumActivity$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/perm/kate/NewAlbumActivity$1;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/perm/kate/NewAlbumActivity$1$1;->this$1:Lcom/perm/kate/NewAlbumActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/perm/kate/NewAlbumActivity$1$1;->this$1:Lcom/perm/kate/NewAlbumActivity$1;

    iget-object v0, v0, Lcom/perm/kate/NewAlbumActivity$1;->this$0:Lcom/perm/kate/NewAlbumActivity;

    invoke-static {v0}, Lcom/perm/kate/NewAlbumActivity;->access$000(Lcom/perm/kate/NewAlbumActivity;)V

    .line 75
    iget-object v0, p0, Lcom/perm/kate/NewAlbumActivity$1$1;->this$1:Lcom/perm/kate/NewAlbumActivity$1;

    iget-object v0, v0, Lcom/perm/kate/NewAlbumActivity$1;->this$0:Lcom/perm/kate/NewAlbumActivity;

    invoke-static {v0}, Lcom/perm/kate/NewAlbumActivity;->access$100(Lcom/perm/kate/NewAlbumActivity;)V

    .line 76
    return-void
.end method
