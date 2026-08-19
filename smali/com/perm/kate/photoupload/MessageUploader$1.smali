.class Lcom/perm/kate/photoupload/MessageUploader$1;
.super Ljava/lang/Thread;
.source "MessageUploader.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/photoupload/MessageUploader;


# direct methods
.method constructor <init>(Lcom/perm/kate/photoupload/MessageUploader;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/perm/kate/photoupload/MessageUploader$1;->this$0:Lcom/perm/kate/photoupload/MessageUploader;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 62
    iget-object v0, p0, Lcom/perm/kate/photoupload/MessageUploader$1;->this$0:Lcom/perm/kate/photoupload/MessageUploader;

    iget-wide v0, v0, Lcom/perm/kate/photoupload/MessageUploader;->group_id:J

    invoke-static {v0, v1}, Lcom/perm/kate/KApplication;->getSession(J)Lcom/perm/kate/session/Session;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/photoupload/MessageUploader$1;->this$0:Lcom/perm/kate/photoupload/MessageUploader;

    iget-object v2, v1, Lcom/perm/kate/photoupload/MessageUploader;->callback_server:Lcom/perm/kate/session/Callback;

    iget-object v1, v1, Lcom/perm/kate/photoupload/MessageUploader;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v2, v1}, Lcom/perm/kate/session/Session;->photosGetMessagesUploadServer(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
