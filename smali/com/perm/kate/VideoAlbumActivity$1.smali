.class Lcom/perm/kate/VideoAlbumActivity$1;
.super Ljava/lang/Thread;
.source "VideoAlbumActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/VideoAlbumActivity;->save()V
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
    .line 53
    iput-object p1, p0, Lcom/perm/kate/VideoAlbumActivity$1;->this$0:Lcom/perm/kate/VideoAlbumActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 56
    iget-object v0, p0, Lcom/perm/kate/VideoAlbumActivity$1;->this$0:Lcom/perm/kate/VideoAlbumActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/perm/kate/VideoAlbumActivity;->showProgressBar(Z)V

    .line 57
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/VideoAlbumActivity$1;->this$0:Lcom/perm/kate/VideoAlbumActivity;

    invoke-static {v1}, Lcom/perm/kate/VideoAlbumActivity;->access$000(Lcom/perm/kate/VideoAlbumActivity;)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/VideoAlbumActivity$1;->this$0:Lcom/perm/kate/VideoAlbumActivity;

    invoke-static {v2}, Lcom/perm/kate/VideoAlbumActivity;->access$100(Lcom/perm/kate/VideoAlbumActivity;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/perm/kate/VideoAlbumActivity$1;->this$0:Lcom/perm/kate/VideoAlbumActivity;

    invoke-static {v3}, Lcom/perm/kate/VideoAlbumActivity;->access$200(Lcom/perm/kate/VideoAlbumActivity;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/perm/kate/VideoAlbumActivity$1;->this$0:Lcom/perm/kate/VideoAlbumActivity;

    invoke-static {v4}, Lcom/perm/kate/VideoAlbumActivity;->access$300(Lcom/perm/kate/VideoAlbumActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v4

    iget-object v5, p0, Lcom/perm/kate/VideoAlbumActivity$1;->this$0:Lcom/perm/kate/VideoAlbumActivity;

    invoke-virtual/range {v0 .. v5}, Lcom/perm/kate/session/Session;->addVideoAlbum(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 58
    return-void
.end method
