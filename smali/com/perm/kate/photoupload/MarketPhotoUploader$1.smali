.class Lcom/perm/kate/photoupload/MarketPhotoUploader$1;
.super Ljava/lang/Thread;
.source "MarketPhotoUploader.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/photoupload/MarketPhotoUploader;


# direct methods
.method constructor <init>(Lcom/perm/kate/photoupload/MarketPhotoUploader;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/perm/kate/photoupload/MarketPhotoUploader$1;->this$0:Lcom/perm/kate/photoupload/MarketPhotoUploader;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 64
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/photoupload/MarketPhotoUploader$1;->this$0:Lcom/perm/kate/photoupload/MarketPhotoUploader;

    iget-wide v2, v1, Lcom/perm/kate/photoupload/MarketPhotoUploader;->group_id:J

    iget-boolean v1, v1, Lcom/perm/kate/photoupload/MarketPhotoUploader;->is_main_photo:Z

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v1, p0, Lcom/perm/kate/photoupload/MarketPhotoUploader$1;->this$0:Lcom/perm/kate/photoupload/MarketPhotoUploader;

    iget-object v5, v1, Lcom/perm/kate/photoupload/MarketPhotoUploader;->callback_server:Lcom/perm/kate/session/Callback;

    iget-object v6, v1, Lcom/perm/kate/photoupload/MarketPhotoUploader;->activity:Landroid/app/Activity;

    move-wide v1, v2

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/perm/kate/session/Session;->marketGetPhotoUploadServer(JLjava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
