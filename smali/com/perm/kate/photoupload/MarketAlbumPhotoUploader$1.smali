.class Lcom/perm/kate/photoupload/MarketAlbumPhotoUploader$1;
.super Ljava/lang/Thread;
.source "MarketAlbumPhotoUploader.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/photoupload/MarketAlbumPhotoUploader;


# direct methods
.method constructor <init>(Lcom/perm/kate/photoupload/MarketAlbumPhotoUploader;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/perm/kate/photoupload/MarketAlbumPhotoUploader$1;->this$0:Lcom/perm/kate/photoupload/MarketAlbumPhotoUploader;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 62
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/photoupload/MarketAlbumPhotoUploader$1;->this$0:Lcom/perm/kate/photoupload/MarketAlbumPhotoUploader;

    iget-wide v2, v1, Lcom/perm/kate/photoupload/MarketAlbumPhotoUploader;->group_id:J

    iget-object v4, v1, Lcom/perm/kate/photoupload/MarketAlbumPhotoUploader;->callback_server:Lcom/perm/kate/session/Callback;

    iget-object v1, v1, Lcom/perm/kate/photoupload/MarketAlbumPhotoUploader;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/perm/kate/session/Session;->marketAlbumGetPhotoUploadServer(JLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
