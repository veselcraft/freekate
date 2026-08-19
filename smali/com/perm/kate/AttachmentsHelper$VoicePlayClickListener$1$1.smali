.class Lcom/perm/kate/AttachmentsHelper$VoicePlayClickListener$1$1;
.super Ljava/lang/Object;
.source "AttachmentsHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$2:Lcom/perm/kate/AttachmentsHelper$VoicePlayClickListener$1;


# direct methods
.method constructor <init>(Lcom/perm/kate/AttachmentsHelper$VoicePlayClickListener$1;)V
    .locals 0

    .line 1571
    iput-object p1, p0, Lcom/perm/kate/AttachmentsHelper$VoicePlayClickListener$1$1;->this$2:Lcom/perm/kate/AttachmentsHelper$VoicePlayClickListener$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1574
    iget-object v0, p0, Lcom/perm/kate/AttachmentsHelper$VoicePlayClickListener$1$1;->this$2:Lcom/perm/kate/AttachmentsHelper$VoicePlayClickListener$1;

    iget-object v0, v0, Lcom/perm/kate/AttachmentsHelper$VoicePlayClickListener$1;->this$1:Lcom/perm/kate/AttachmentsHelper$VoicePlayClickListener;

    iget-object v0, v0, Lcom/perm/kate/AttachmentsHelper$VoicePlayClickListener;->this$0:Lcom/perm/kate/AttachmentsHelper;

    invoke-static {v0}, Lcom/perm/kate/AttachmentsHelper;->access$500(Lcom/perm/kate/AttachmentsHelper;)Lcom/perm/kate/Player;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/AttachmentsHelper$VoicePlayClickListener$1$1;->this$2:Lcom/perm/kate/AttachmentsHelper$VoicePlayClickListener$1;

    iget-object v1, v1, Lcom/perm/kate/AttachmentsHelper$VoicePlayClickListener$1;->val$gif_file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/perm/kate/Player;->play(Ljava/lang/String;)V

    .line 1575
    invoke-static {}, Lcom/perm/kate/AttachmentsHelper;->voiceOverSpeakerphoneEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1576
    iget-object v0, p0, Lcom/perm/kate/AttachmentsHelper$VoicePlayClickListener$1$1;->this$2:Lcom/perm/kate/AttachmentsHelper$VoicePlayClickListener$1;

    iget-object v0, v0, Lcom/perm/kate/AttachmentsHelper$VoicePlayClickListener$1;->this$1:Lcom/perm/kate/AttachmentsHelper$VoicePlayClickListener;

    iget-object v0, v0, Lcom/perm/kate/AttachmentsHelper$VoicePlayClickListener;->this$0:Lcom/perm/kate/AttachmentsHelper;

    iget-object v0, v0, Lcom/perm/kate/AttachmentsHelper;->activity:Lcom/perm/kate/BaseActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setVolumeControlStream(I)V

    :cond_0
    return-void
.end method
