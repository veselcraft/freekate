.class Lcom/perm/kate/AttachmentsHelper$VoicePlayClickListener;
.super Ljava/lang/Object;
.source "AttachmentsHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/AttachmentsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VoicePlayClickListener"
.end annotation


# instance fields
.field audio:Lcom/perm/kate/api/Audio;

.field final synthetic this$0:Lcom/perm/kate/AttachmentsHelper;


# direct methods
.method public constructor <init>(Lcom/perm/kate/AttachmentsHelper;Lcom/perm/kate/api/Audio;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/AttachmentsHelper;
    .param p2, "audio"    # Lcom/perm/kate/api/Audio;

    .prologue
    .line 1227
    iput-object p1, p0, Lcom/perm/kate/AttachmentsHelper$VoicePlayClickListener;->this$0:Lcom/perm/kate/AttachmentsHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1228
    iput-object p2, p0, Lcom/perm/kate/AttachmentsHelper$VoicePlayClickListener;->audio:Lcom/perm/kate/api/Audio;

    .line 1229
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1232
    const-wide/16 v0, 0x0

    .local v0, "current_voice":J
    const-wide/16 v2, 0x0

    .line 1233
    .local v2, "current_voice_owner":J
    iget-object v4, p0, Lcom/perm/kate/AttachmentsHelper$VoicePlayClickListener;->this$0:Lcom/perm/kate/AttachmentsHelper;

    invoke-static {v4}, Lcom/perm/kate/AttachmentsHelper;->access$300(Lcom/perm/kate/AttachmentsHelper;)Lcom/perm/kate/api/Audio;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1234
    iget-object v4, p0, Lcom/perm/kate/AttachmentsHelper$VoicePlayClickListener;->this$0:Lcom/perm/kate/AttachmentsHelper;

    invoke-static {v4}, Lcom/perm/kate/AttachmentsHelper;->access$300(Lcom/perm/kate/AttachmentsHelper;)Lcom/perm/kate/api/Audio;

    move-result-object v4

    iget-wide v0, v4, Lcom/perm/kate/api/Audio;->aid:J

    .line 1235
    iget-object v4, p0, Lcom/perm/kate/AttachmentsHelper$VoicePlayClickListener;->this$0:Lcom/perm/kate/AttachmentsHelper;

    invoke-static {v4}, Lcom/perm/kate/AttachmentsHelper;->access$300(Lcom/perm/kate/AttachmentsHelper;)Lcom/perm/kate/api/Audio;

    move-result-object v4

    iget-wide v2, v4, Lcom/perm/kate/api/Audio;->owner_id:J

    .line 1237
    :cond_0
    iget-object v4, p0, Lcom/perm/kate/AttachmentsHelper$VoicePlayClickListener;->this$0:Lcom/perm/kate/AttachmentsHelper;

    invoke-static {v4}, Lcom/perm/kate/AttachmentsHelper;->access$400(Lcom/perm/kate/AttachmentsHelper;)Lcom/perm/kate/Player;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/perm/kate/AttachmentsHelper$VoicePlayClickListener;->this$0:Lcom/perm/kate/AttachmentsHelper;

    invoke-static {v4}, Lcom/perm/kate/AttachmentsHelper;->access$400(Lcom/perm/kate/AttachmentsHelper;)Lcom/perm/kate/Player;

    move-result-object v4

    iget v4, v4, Lcom/perm/kate/Player;->state:I

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/perm/kate/AttachmentsHelper$VoicePlayClickListener;->audio:Lcom/perm/kate/api/Audio;

    iget-wide v4, v4, Lcom/perm/kate/api/Audio;->aid:J

    cmp-long v4, v0, v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/perm/kate/AttachmentsHelper$VoicePlayClickListener;->audio:Lcom/perm/kate/api/Audio;

    iget-wide v4, v4, Lcom/perm/kate/api/Audio;->owner_id:J

    cmp-long v4, v2, v4

    if-nez v4, :cond_1

    .line 1238
    iget-object v4, p0, Lcom/perm/kate/AttachmentsHelper$VoicePlayClickListener;->this$0:Lcom/perm/kate/AttachmentsHelper;

    invoke-static {v4}, Lcom/perm/kate/AttachmentsHelper;->access$500(Lcom/perm/kate/AttachmentsHelper;)Lcom/perm/kate/Player;

    move-result-object v4

    invoke-virtual {v4}, Lcom/perm/kate/Player;->pause()V

    .line 1245
    :goto_0
    return-void

    .line 1240
    :cond_1
    sget-object v4, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    if-eqz v4, :cond_2

    sget-object v4, Lcom/perm/kate/PlaybackService;->player:Lcom/perm/kate/Player;

    iget v4, v4, Lcom/perm/kate/Player;->state:I

    if-nez v4, :cond_2

    .line 1241
    iget-object v4, p0, Lcom/perm/kate/AttachmentsHelper$VoicePlayClickListener;->this$0:Lcom/perm/kate/AttachmentsHelper;

    invoke-static {v4}, Lcom/perm/kate/AttachmentsHelper;->access$200(Lcom/perm/kate/AttachmentsHelper;)V

    .line 1242
    :cond_2
    iget-object v4, p0, Lcom/perm/kate/AttachmentsHelper$VoicePlayClickListener;->this$0:Lcom/perm/kate/AttachmentsHelper;

    iget-object v5, p0, Lcom/perm/kate/AttachmentsHelper$VoicePlayClickListener;->audio:Lcom/perm/kate/api/Audio;

    invoke-static {v4, v5}, Lcom/perm/kate/AttachmentsHelper;->access$302(Lcom/perm/kate/AttachmentsHelper;Lcom/perm/kate/api/Audio;)Lcom/perm/kate/api/Audio;

    .line 1243
    iget-object v4, p0, Lcom/perm/kate/AttachmentsHelper$VoicePlayClickListener;->this$0:Lcom/perm/kate/AttachmentsHelper;

    invoke-static {v4}, Lcom/perm/kate/AttachmentsHelper;->access$500(Lcom/perm/kate/AttachmentsHelper;)Lcom/perm/kate/Player;

    move-result-object v4

    iget-object v5, p0, Lcom/perm/kate/AttachmentsHelper$VoicePlayClickListener;->audio:Lcom/perm/kate/api/Audio;

    iget-object v5, v5, Lcom/perm/kate/api/Audio;->url:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/perm/kate/Player;->play(Ljava/lang/String;)V

    goto :goto_0
.end method
