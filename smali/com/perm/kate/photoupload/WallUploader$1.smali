.class Lcom/perm/kate/photoupload/WallUploader$1;
.super Ljava/lang/Thread;
.source "WallUploader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/photoupload/WallUploader;->getUploadServer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/photoupload/WallUploader;


# direct methods
.method constructor <init>(Lcom/perm/kate/photoupload/WallUploader;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/photoupload/WallUploader;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/perm/kate/photoupload/WallUploader$1;->this$0:Lcom/perm/kate/photoupload/WallUploader;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 65
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/photoupload/WallUploader$1;->this$0:Lcom/perm/kate/photoupload/WallUploader;

    iget-object v1, v1, Lcom/perm/kate/photoupload/WallUploader;->user_id:Ljava/lang/Long;

    iget-object v2, p0, Lcom/perm/kate/photoupload/WallUploader$1;->this$0:Lcom/perm/kate/photoupload/WallUploader;

    iget-object v2, v2, Lcom/perm/kate/photoupload/WallUploader;->group_id:Ljava/lang/Long;

    iget-object v3, p0, Lcom/perm/kate/photoupload/WallUploader$1;->this$0:Lcom/perm/kate/photoupload/WallUploader;

    iget-object v3, v3, Lcom/perm/kate/photoupload/WallUploader;->callback_server:Lcom/perm/kate/session/Callback;

    iget-object v4, p0, Lcom/perm/kate/photoupload/WallUploader$1;->this$0:Lcom/perm/kate/photoupload/WallUploader;

    iget-object v4, v4, Lcom/perm/kate/photoupload/WallUploader;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/perm/kate/session/Session;->photosGetWallUploadServer(Ljava/lang/Long;Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 66
    return-void
.end method
