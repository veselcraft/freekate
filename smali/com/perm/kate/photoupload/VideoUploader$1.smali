.class Lcom/perm/kate/photoupload/VideoUploader$1;
.super Ljava/lang/Thread;
.source "VideoUploader.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/photoupload/VideoUploader;

.field final synthetic val$gid:Ljava/lang/Long;

.field final synthetic val$is_private:Z

.field final synthetic val$video_description:Ljava/lang/String;

.field final synthetic val$video_name:Ljava/lang/String;

.field final synthetic val$who_look:Ljava/lang/String;

.field final synthetic val$who_make_commnets:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/perm/kate/photoupload/VideoUploader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/perm/kate/photoupload/VideoUploader$1;->this$0:Lcom/perm/kate/photoupload/VideoUploader;

    iput-object p2, p0, Lcom/perm/kate/photoupload/VideoUploader$1;->val$video_name:Ljava/lang/String;

    iput-object p3, p0, Lcom/perm/kate/photoupload/VideoUploader$1;->val$video_description:Ljava/lang/String;

    iput-object p4, p0, Lcom/perm/kate/photoupload/VideoUploader$1;->val$gid:Ljava/lang/Long;

    iput-object p5, p0, Lcom/perm/kate/photoupload/VideoUploader$1;->val$who_look:Ljava/lang/String;

    iput-object p6, p0, Lcom/perm/kate/photoupload/VideoUploader$1;->val$who_make_commnets:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/perm/kate/photoupload/VideoUploader$1;->val$is_private:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 49
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/photoupload/VideoUploader$1;->val$video_name:Ljava/lang/String;

    iget-object v2, p0, Lcom/perm/kate/photoupload/VideoUploader$1;->val$video_description:Ljava/lang/String;

    iget-object v3, p0, Lcom/perm/kate/photoupload/VideoUploader$1;->val$gid:Ljava/lang/Long;

    iget-object v4, p0, Lcom/perm/kate/photoupload/VideoUploader$1;->val$who_look:Ljava/lang/String;

    iget-object v5, p0, Lcom/perm/kate/photoupload/VideoUploader$1;->val$who_make_commnets:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/perm/kate/photoupload/VideoUploader$1;->val$is_private:Z

    iget-object v7, p0, Lcom/perm/kate/photoupload/VideoUploader$1;->this$0:Lcom/perm/kate/photoupload/VideoUploader;

    iget-object v8, v7, Lcom/perm/kate/photoupload/VideoUploader;->link:Ljava/lang/String;

    iget-object v9, v7, Lcom/perm/kate/photoupload/VideoUploader;->callback_server:Lcom/perm/kate/session/Callback;

    iget-object v10, v7, Lcom/perm/kate/photoupload/VideoUploader;->activity:Landroid/app/Activity;

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    invoke-virtual/range {v0 .. v9}, Lcom/perm/kate/session/Session;->saveVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
