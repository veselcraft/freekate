.class Lcom/perm/kate/photoupload/AlbumUploader$1;
.super Ljava/lang/Thread;
.source "AlbumUploader.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/photoupload/AlbumUploader;


# direct methods
.method constructor <init>(Lcom/perm/kate/photoupload/AlbumUploader;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/perm/kate/photoupload/AlbumUploader$1;->this$0:Lcom/perm/kate/photoupload/AlbumUploader;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 64
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/photoupload/AlbumUploader$1;->this$0:Lcom/perm/kate/photoupload/AlbumUploader;

    iget-wide v2, v1, Lcom/perm/kate/photoupload/AlbumUploader;->album_id:J

    iget-object v4, v1, Lcom/perm/kate/photoupload/AlbumUploader;->group_id:Ljava/lang/Long;

    iget-object v5, v1, Lcom/perm/kate/photoupload/AlbumUploader;->callback_server:Lcom/perm/kate/session/Callback;

    iget-object v6, v1, Lcom/perm/kate/photoupload/AlbumUploader;->activity:Landroid/app/Activity;

    move-wide v1, v2

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/perm/kate/session/Session;->photosGetUploadServer(JLjava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
