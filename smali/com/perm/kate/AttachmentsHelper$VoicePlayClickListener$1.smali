.class Lcom/perm/kate/AttachmentsHelper$VoicePlayClickListener$1;
.super Ljava/lang/Object;
.source "AttachmentsHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/perm/kate/AttachmentsHelper$VoicePlayClickListener;

.field final synthetic val$gif_file:Ljava/io/File;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/perm/kate/AttachmentsHelper$VoicePlayClickListener;Ljava/lang/String;Ljava/io/File;)V
    .locals 0

    .line 1561
    iput-object p1, p0, Lcom/perm/kate/AttachmentsHelper$VoicePlayClickListener$1;->this$1:Lcom/perm/kate/AttachmentsHelper$VoicePlayClickListener;

    iput-object p2, p0, Lcom/perm/kate/AttachmentsHelper$VoicePlayClickListener$1;->val$path:Ljava/lang/String;

    iput-object p3, p0, Lcom/perm/kate/AttachmentsHelper$VoicePlayClickListener$1;->val$gif_file:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v0, 0x0

    .line 1566
    :try_start_0
    iget-object v1, p0, Lcom/perm/kate/AttachmentsHelper$VoicePlayClickListener$1;->this$1:Lcom/perm/kate/AttachmentsHelper$VoicePlayClickListener;

    iget-object v1, v1, Lcom/perm/kate/AttachmentsHelper$VoicePlayClickListener;->this$0:Lcom/perm/kate/AttachmentsHelper;

    iget-object v1, v1, Lcom/perm/kate/AttachmentsHelper;->activity:Lcom/perm/kate/BaseActivity;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 1567
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/AttachmentsHelper$VoicePlayClickListener$1;->val$path:Ljava/lang/String;

    iget-object v3, p0, Lcom/perm/kate/AttachmentsHelper$VoicePlayClickListener$1;->val$gif_file:Ljava/io/File;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/perm/kate/ImageLoader;->downloadImage(Ljava/lang/String;Ljava/io/File;Lcom/perm/utils/UploadProgressListener;)V

    .line 1568
    iget-object v1, p0, Lcom/perm/kate/AttachmentsHelper$VoicePlayClickListener$1;->this$1:Lcom/perm/kate/AttachmentsHelper$VoicePlayClickListener;

    iget-object v1, v1, Lcom/perm/kate/AttachmentsHelper$VoicePlayClickListener;->this$0:Lcom/perm/kate/AttachmentsHelper;

    iget-object v1, v1, Lcom/perm/kate/AttachmentsHelper;->activity:Lcom/perm/kate/BaseActivity;

    if-nez v1, :cond_0

    return-void

    .line 1570
    :cond_0
    invoke-virtual {v1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 1571
    iget-object v1, p0, Lcom/perm/kate/AttachmentsHelper$VoicePlayClickListener$1;->this$1:Lcom/perm/kate/AttachmentsHelper$VoicePlayClickListener;

    iget-object v1, v1, Lcom/perm/kate/AttachmentsHelper$VoicePlayClickListener;->this$0:Lcom/perm/kate/AttachmentsHelper;

    iget-object v1, v1, Lcom/perm/kate/AttachmentsHelper;->activity:Lcom/perm/kate/BaseActivity;

    new-instance v2, Lcom/perm/kate/AttachmentsHelper$VoicePlayClickListener$1$1;

    invoke-direct {v2, p0}, Lcom/perm/kate/AttachmentsHelper$VoicePlayClickListener$1$1;-><init>(Lcom/perm/kate/AttachmentsHelper$VoicePlayClickListener$1;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 1580
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1581
    invoke-static {v1}, Lcom/perm/kate/Helper;->isNoiseException(Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1582
    invoke-static {v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 1583
    :cond_1
    iget-object v1, p0, Lcom/perm/kate/AttachmentsHelper$VoicePlayClickListener$1;->this$1:Lcom/perm/kate/AttachmentsHelper$VoicePlayClickListener;

    iget-object v1, v1, Lcom/perm/kate/AttachmentsHelper$VoicePlayClickListener;->this$0:Lcom/perm/kate/AttachmentsHelper;

    iget-object v1, v1, Lcom/perm/kate/AttachmentsHelper;->activity:Lcom/perm/kate/BaseActivity;

    if-eqz v1, :cond_2

    .line 1584
    invoke-virtual {v1, v0}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    :cond_2
    :goto_0
    return-void
.end method
