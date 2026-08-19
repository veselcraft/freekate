.class Lcom/perm/kate/AttachmentsHelper$VoicePlayClickListener;
.super Ljava/lang/Object;
.source "AttachmentsHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field audio:Lcom/perm/kate/api/Audio;

.field final synthetic this$0:Lcom/perm/kate/AttachmentsHelper;


# direct methods
.method public constructor <init>(Lcom/perm/kate/AttachmentsHelper;Lcom/perm/kate/api/Audio;)V
    .locals 0

    .line 1527
    iput-object p1, p0, Lcom/perm/kate/AttachmentsHelper$VoicePlayClickListener;->this$0:Lcom/perm/kate/AttachmentsHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1528
    iput-object p2, p0, Lcom/perm/kate/AttachmentsHelper$VoicePlayClickListener;->audio:Lcom/perm/kate/api/Audio;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 1533
    invoke-static {}, Lcom/perm/kate/AttachmentsHelper;->access$300()Lcom/perm/kate/api/Audio;

    move-result-object p1

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_0

    .line 1534
    invoke-static {}, Lcom/perm/kate/AttachmentsHelper;->access$300()Lcom/perm/kate/api/Audio;

    move-result-object p1

    iget-wide v0, p1, Lcom/perm/kate/api/Audio;->aid:J

    .line 1535
    invoke-static {}, Lcom/perm/kate/AttachmentsHelper;->access$300()Lcom/perm/kate/api/Audio;

    move-result-object p1

    iget-wide v2, p1, Lcom/perm/kate/api/Audio;->owner_id:J

    goto :goto_0

    :cond_0
    move-wide v2, v0

    .line 1537
    :goto_0
    invoke-static {}, Lcom/perm/kate/AttachmentsHelper;->access$400()Lcom/perm/kate/Player;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/perm/kate/AttachmentsHelper;->access$400()Lcom/perm/kate/Player;

    move-result-object p1

    iget p1, p1, Lcom/perm/kate/Player;->state:I

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/perm/kate/AttachmentsHelper$VoicePlayClickListener;->audio:Lcom/perm/kate/api/Audio;

    iget-wide v4, p1, Lcom/perm/kate/api/Audio;->aid:J

    cmp-long v6, v0, v4

    if-nez v6, :cond_1

    iget-wide v0, p1, Lcom/perm/kate/api/Audio;->owner_id:J

    cmp-long p1, v2, v0

    if-nez p1, :cond_1

    .line 1538
    iget-object p1, p0, Lcom/perm/kate/AttachmentsHelper$VoicePlayClickListener;->this$0:Lcom/perm/kate/AttachmentsHelper;

    invoke-static {p1}, Lcom/perm/kate/AttachmentsHelper;->access$500(Lcom/perm/kate/AttachmentsHelper;)Lcom/perm/kate/Player;

    move-result-object p1

    invoke-virtual {p1}, Lcom/perm/kate/Player;->pause()V

    .line 1539
    iget-object p1, p0, Lcom/perm/kate/AttachmentsHelper$VoicePlayClickListener;->this$0:Lcom/perm/kate/AttachmentsHelper;

    iget-object v0, p1, Lcom/perm/kate/AttachmentsHelper;->handler:Landroid/os/Handler;

    iget-object p1, p1, Lcom/perm/kate/AttachmentsHelper;->task:Ljava/lang/Runnable;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_3

    .line 1541
    :cond_1
    sget-object p1, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    if-eqz p1, :cond_2

    iget p1, p1, Lcom/perm/kate/Player;->state:I

    if-nez p1, :cond_2

    .line 1542
    iget-object p1, p0, Lcom/perm/kate/AttachmentsHelper$VoicePlayClickListener;->this$0:Lcom/perm/kate/AttachmentsHelper;

    invoke-static {p1}, Lcom/perm/kate/AttachmentsHelper;->access$200(Lcom/perm/kate/AttachmentsHelper;)V

    .line 1543
    :cond_2
    iget-object p1, p0, Lcom/perm/kate/AttachmentsHelper$VoicePlayClickListener;->audio:Lcom/perm/kate/api/Audio;

    invoke-static {p1}, Lcom/perm/kate/AttachmentsHelper;->access$302(Lcom/perm/kate/api/Audio;)Lcom/perm/kate/api/Audio;

    .line 1544
    invoke-static {}, Lcom/perm/utils/ProxyManager;->getEnabled()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_4

    invoke-static {}, Lcom/perm/kate/AttachmentsHelper;->downloadVoiceEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    .line 1589
    :cond_3
    iget-object p1, p0, Lcom/perm/kate/AttachmentsHelper$VoicePlayClickListener;->this$0:Lcom/perm/kate/AttachmentsHelper;

    invoke-static {p1}, Lcom/perm/kate/AttachmentsHelper;->access$500(Lcom/perm/kate/AttachmentsHelper;)Lcom/perm/kate/Player;

    move-result-object p1

    iget-object v1, p0, Lcom/perm/kate/AttachmentsHelper$VoicePlayClickListener;->audio:Lcom/perm/kate/api/Audio;

    iget-object v1, v1, Lcom/perm/kate/api/Audio;->url:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/perm/kate/Player;->play(Ljava/lang/String;)V

    .line 1590
    invoke-static {}, Lcom/perm/kate/AttachmentsHelper;->voiceOverSpeakerphoneEnabled()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1591
    iget-object p1, p0, Lcom/perm/kate/AttachmentsHelper$VoicePlayClickListener;->this$0:Lcom/perm/kate/AttachmentsHelper;

    iget-object p1, p1, Lcom/perm/kate/AttachmentsHelper;->activity:Lcom/perm/kate/BaseActivity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setVolumeControlStream(I)V

    goto :goto_2

    .line 1550
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/perm/kate/AttachmentsHelper$VoicePlayClickListener;->audio:Lcom/perm/kate/api/Audio;

    iget-object p1, p1, Lcom/perm/kate/api/Audio;->url:Ljava/lang/String;

    .line 1553
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    return-void

    .line 1555
    :cond_5
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/perm/kate/ImageLoader;->getCacheFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 1556
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1557
    iget-object p1, p0, Lcom/perm/kate/AttachmentsHelper$VoicePlayClickListener;->this$0:Lcom/perm/kate/AttachmentsHelper;

    invoke-static {p1}, Lcom/perm/kate/AttachmentsHelper;->access$500(Lcom/perm/kate/AttachmentsHelper;)Lcom/perm/kate/Player;

    move-result-object p1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/perm/kate/Player;->play(Ljava/lang/String;)V

    .line 1558
    invoke-static {}, Lcom/perm/kate/AttachmentsHelper;->voiceOverSpeakerphoneEnabled()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1559
    iget-object p1, p0, Lcom/perm/kate/AttachmentsHelper$VoicePlayClickListener;->this$0:Lcom/perm/kate/AttachmentsHelper;

    iget-object p1, p1, Lcom/perm/kate/AttachmentsHelper;->activity:Lcom/perm/kate/BaseActivity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setVolumeControlStream(I)V

    goto :goto_2

    .line 1561
    :cond_6
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/perm/kate/AttachmentsHelper$VoicePlayClickListener$1;

    invoke-direct {v2, p0, p1, v1}, Lcom/perm/kate/AttachmentsHelper$VoicePlayClickListener$1;-><init>(Lcom/perm/kate/AttachmentsHelper$VoicePlayClickListener;Ljava/lang/String;Ljava/io/File;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1587
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1594
    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/perm/kate/AttachmentsHelper$VoicePlayClickListener;->this$0:Lcom/perm/kate/AttachmentsHelper;

    iget-object v0, p1, Lcom/perm/kate/AttachmentsHelper;->handler:Landroid/os/Handler;

    iget-object p1, p1, Lcom/perm/kate/AttachmentsHelper;->task:Ljava/lang/Runnable;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1595
    iget-object p1, p0, Lcom/perm/kate/AttachmentsHelper$VoicePlayClickListener;->this$0:Lcom/perm/kate/AttachmentsHelper;

    iget-object v0, p1, Lcom/perm/kate/AttachmentsHelper;->handler:Landroid/os/Handler;

    iget-object p1, p1, Lcom/perm/kate/AttachmentsHelper;->task:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_3
    return-void
.end method
