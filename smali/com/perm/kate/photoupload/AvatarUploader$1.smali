.class Lcom/perm/kate/photoupload/AvatarUploader$1;
.super Ljava/lang/Thread;
.source "AvatarUploader.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/photoupload/AvatarUploader;


# direct methods
.method constructor <init>(Lcom/perm/kate/photoupload/AvatarUploader;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/perm/kate/photoupload/AvatarUploader$1;->this$0:Lcom/perm/kate/photoupload/AvatarUploader;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 77
    iget-object v0, p0, Lcom/perm/kate/photoupload/AvatarUploader$1;->this$0:Lcom/perm/kate/photoupload/AvatarUploader;

    iget-boolean v1, v0, Lcom/perm/kate/photoupload/AvatarUploader;->for_chat:Z

    if-eqz v1, :cond_0

    .line 78
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-wide v3, v0, Lcom/perm/kate/photoupload/AvatarUploader;->chat_id:J

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, v0, Lcom/perm/kate/photoupload/AvatarUploader;->callback_server:Lcom/perm/kate/session/Callback;

    iget-object v9, v0, Lcom/perm/kate/photoupload/AvatarUploader;->activity:Landroid/app/Activity;

    invoke-virtual/range {v2 .. v9}, Lcom/perm/kate/session/Session;->photosGetChatUploadServer(JLjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    goto :goto_0

    .line 80
    :cond_0
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v2, v0, Lcom/perm/kate/photoupload/AvatarUploader;->owner_id:Ljava/lang/Long;

    iget-object v3, v0, Lcom/perm/kate/photoupload/AvatarUploader;->callback_server:Lcom/perm/kate/session/Callback;

    iget-object v0, v0, Lcom/perm/kate/photoupload/AvatarUploader;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v2, v3, v0}, Lcom/perm/kate/session/Session;->photosGetOwnerPhotoUploadServer(Ljava/lang/Long;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    :goto_0
    return-void
.end method
