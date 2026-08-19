.class Lcom/perm/kate/photoupload/StoryPhotoUploader$1;
.super Ljava/lang/Thread;
.source "StoryPhotoUploader.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/photoupload/StoryPhotoUploader;


# direct methods
.method constructor <init>(Lcom/perm/kate/photoupload/StoryPhotoUploader;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/perm/kate/photoupload/StoryPhotoUploader$1;->this$0:Lcom/perm/kate/photoupload/StoryPhotoUploader;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 57
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/photoupload/StoryPhotoUploader$1;->this$0:Lcom/perm/kate/photoupload/StoryPhotoUploader;

    iget-object v2, v1, Lcom/perm/kate/photoupload/StoryPhotoUploader;->callback_server:Lcom/perm/kate/session/Callback;

    iget-object v1, v1, Lcom/perm/kate/photoupload/StoryPhotoUploader;->activity:Landroid/app/Activity;

    invoke-virtual {v0, v2, v1}, Lcom/perm/kate/session/Session;->storiesGetPhotoUploadServer(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
