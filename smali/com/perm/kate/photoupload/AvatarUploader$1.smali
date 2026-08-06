.class Lcom/perm/kate/photoupload/AvatarUploader$1;
.super Ljava/lang/Thread;
.source "AvatarUploader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/photoupload/AvatarUploader;->getUploadServer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/photoupload/AvatarUploader;


# direct methods
.method constructor <init>(Lcom/perm/kate/photoupload/AvatarUploader;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/photoupload/AvatarUploader;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/perm/kate/photoupload/AvatarUploader$1;->this$0:Lcom/perm/kate/photoupload/AvatarUploader;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 82
    iget-object v0, p0, Lcom/perm/kate/photoupload/AvatarUploader$1;->this$0:Lcom/perm/kate/photoupload/AvatarUploader;

    iget-boolean v0, v0, Lcom/perm/kate/photoupload/AvatarUploader;->for_chat:Z

    if-eqz v0, :cond_0

    .line 83
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v0, p0, Lcom/perm/kate/photoupload/AvatarUploader$1;->this$0:Lcom/perm/kate/photoupload/AvatarUploader;

    iget-wide v2, v0, Lcom/perm/kate/photoupload/AvatarUploader;->chat_id:J

    iget-object v0, p0, Lcom/perm/kate/photoupload/AvatarUploader$1;->this$0:Lcom/perm/kate/photoupload/AvatarUploader;

    iget-object v7, v0, Lcom/perm/kate/photoupload/AvatarUploader;->callback_server:Lcom/perm/kate/session/Callback;

    iget-object v0, p0, Lcom/perm/kate/photoupload/AvatarUploader$1;->this$0:Lcom/perm/kate/photoupload/AvatarUploader;

    iget-object v8, v0, Lcom/perm/kate/photoupload/AvatarUploader;->activity:Landroid/app/Activity;

    move-object v5, v4

    move-object v6, v4

    invoke-virtual/range {v1 .. v8}, Lcom/perm/kate/session/Session;->photosGetChatUploadServer(JLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 86
    :goto_0
    return-void

    .line 85
    :cond_0
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/photoupload/AvatarUploader$1;->this$0:Lcom/perm/kate/photoupload/AvatarUploader;

    iget-object v1, v1, Lcom/perm/kate/photoupload/AvatarUploader;->owner_id:Ljava/lang/Long;

    iget-object v2, p0, Lcom/perm/kate/photoupload/AvatarUploader$1;->this$0:Lcom/perm/kate/photoupload/AvatarUploader;

    iget-object v2, v2, Lcom/perm/kate/photoupload/AvatarUploader;->callback_server:Lcom/perm/kate/session/Callback;

    iget-object v3, p0, Lcom/perm/kate/photoupload/AvatarUploader$1;->this$0:Lcom/perm/kate/photoupload/AvatarUploader;

    iget-object v3, v3, Lcom/perm/kate/photoupload/AvatarUploader;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v1, v2, v3}, Lcom/perm/kate/session/Session;->photosGetOwnerPhotoUploadServer(Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0
.end method
