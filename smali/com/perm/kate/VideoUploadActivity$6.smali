.class Lcom/perm/kate/VideoUploadActivity$6;
.super Ljava/lang/Thread;
.source "VideoUploadActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/VideoUploadActivity;->showVideoData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/VideoUploadActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/VideoUploadActivity;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/perm/kate/VideoUploadActivity$6;->this$0:Lcom/perm/kate/VideoUploadActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 225
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/perm/kate/VideoUploadActivity$6;->this$0:Lcom/perm/kate/VideoUploadActivity;

    invoke-static {v2}, Lcom/perm/kate/VideoUploadActivity;->access$500(Lcom/perm/kate/VideoUploadActivity;)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/perm/kate/VideoUploadActivity$6;->this$0:Lcom/perm/kate/VideoUploadActivity;

    invoke-static {v2}, Lcom/perm/kate/VideoUploadActivity;->access$600(Lcom/perm/kate/VideoUploadActivity;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/VideoUploadActivity$6;->this$0:Lcom/perm/kate/VideoUploadActivity;

    invoke-static {v2}, Lcom/perm/kate/VideoUploadActivity;->access$500(Lcom/perm/kate/VideoUploadActivity;)Ljava/lang/Long;

    move-result-object v2

    const-wide/16 v3, 0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-object v3, p0, Lcom/perm/kate/VideoUploadActivity$6;->this$0:Lcom/perm/kate/VideoUploadActivity;

    invoke-static {v3}, Lcom/perm/kate/VideoUploadActivity;->access$700(Lcom/perm/kate/VideoUploadActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v8

    iget-object v9, p0, Lcom/perm/kate/VideoUploadActivity$6;->this$0:Lcom/perm/kate/VideoUploadActivity;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual/range {v0 .. v9}, Lcom/perm/kate/session/Session;->getVideo(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;ZLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
