.class Lcom/perm/kate/photoupload/AlbumUploader$1;
.super Ljava/lang/Thread;
.source "AlbumUploader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/photoupload/AlbumUploader;->getUploadServer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/photoupload/AlbumUploader;


# direct methods
.method constructor <init>(Lcom/perm/kate/photoupload/AlbumUploader;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/photoupload/AlbumUploader;

    .prologue
    .line 62
    iput-object p1, p0, Lcom/perm/kate/photoupload/AlbumUploader$1;->this$0:Lcom/perm/kate/photoupload/AlbumUploader;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 64
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v0, p0, Lcom/perm/kate/photoupload/AlbumUploader$1;->this$0:Lcom/perm/kate/photoupload/AlbumUploader;

    iget-wide v2, v0, Lcom/perm/kate/photoupload/AlbumUploader;->album_id:J

    iget-object v0, p0, Lcom/perm/kate/photoupload/AlbumUploader$1;->this$0:Lcom/perm/kate/photoupload/AlbumUploader;

    iget-object v4, v0, Lcom/perm/kate/photoupload/AlbumUploader;->group_id:Ljava/lang/Long;

    iget-object v0, p0, Lcom/perm/kate/photoupload/AlbumUploader$1;->this$0:Lcom/perm/kate/photoupload/AlbumUploader;

    iget-object v5, v0, Lcom/perm/kate/photoupload/AlbumUploader;->callback_server:Lcom/perm/kate/session/Callback;

    iget-object v0, p0, Lcom/perm/kate/photoupload/AlbumUploader$1;->this$0:Lcom/perm/kate/photoupload/AlbumUploader;

    iget-object v6, v0, Lcom/perm/kate/photoupload/AlbumUploader;->activity:Landroid/app/Activity;

    invoke-virtual/range {v1 .. v6}, Lcom/perm/kate/session/Session;->photosGetUploadServer(JLjava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 65
    return-void
.end method
