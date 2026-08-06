.class Lcom/perm/kate/EditAudioActivity$6;
.super Ljava/lang/Thread;
.source "EditAudioActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/EditAudioActivity;->saveInThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/EditAudioActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/EditAudioActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/EditAudioActivity;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/perm/kate/EditAudioActivity$6;->this$0:Lcom/perm/kate/EditAudioActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v9, 0x0

    .line 131
    iget-object v0, p0, Lcom/perm/kate/EditAudioActivity$6;->this$0:Lcom/perm/kate/EditAudioActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/perm/kate/EditAudioActivity;->showProgressBar(Z)V

    .line 132
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v0, p0, Lcom/perm/kate/EditAudioActivity$6;->this$0:Lcom/perm/kate/EditAudioActivity;

    invoke-static {v0}, Lcom/perm/kate/EditAudioActivity;->access$000(Lcom/perm/kate/EditAudioActivity;)Lcom/perm/kate/api/Audio;

    move-result-object v0

    iget-wide v2, v0, Lcom/perm/kate/api/Audio;->owner_id:J

    iget-object v0, p0, Lcom/perm/kate/EditAudioActivity$6;->this$0:Lcom/perm/kate/EditAudioActivity;

    invoke-static {v0}, Lcom/perm/kate/EditAudioActivity;->access$000(Lcom/perm/kate/EditAudioActivity;)Lcom/perm/kate/api/Audio;

    move-result-object v0

    iget-wide v4, v0, Lcom/perm/kate/api/Audio;->aid:J

    iget-object v0, p0, Lcom/perm/kate/EditAudioActivity$6;->this$0:Lcom/perm/kate/EditAudioActivity;

    invoke-static {v0}, Lcom/perm/kate/EditAudioActivity;->access$000(Lcom/perm/kate/EditAudioActivity;)Lcom/perm/kate/api/Audio;

    move-result-object v0

    iget-object v6, v0, Lcom/perm/kate/api/Audio;->artist:Ljava/lang/String;

    iget-object v0, p0, Lcom/perm/kate/EditAudioActivity$6;->this$0:Lcom/perm/kate/EditAudioActivity;

    invoke-static {v0}, Lcom/perm/kate/EditAudioActivity;->access$000(Lcom/perm/kate/EditAudioActivity;)Lcom/perm/kate/api/Audio;

    move-result-object v0

    iget-object v7, v0, Lcom/perm/kate/api/Audio;->title:Ljava/lang/String;

    iget-object v0, p0, Lcom/perm/kate/EditAudioActivity$6;->this$0:Lcom/perm/kate/EditAudioActivity;

    invoke-static {v0}, Lcom/perm/kate/EditAudioActivity;->access$200(Lcom/perm/kate/EditAudioActivity;)Ljava/lang/String;

    move-result-object v8

    iget-object v0, p0, Lcom/perm/kate/EditAudioActivity$6;->this$0:Lcom/perm/kate/EditAudioActivity;

    invoke-static {v0}, Lcom/perm/kate/EditAudioActivity;->access$700(Lcom/perm/kate/EditAudioActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v11

    iget-object v12, p0, Lcom/perm/kate/EditAudioActivity$6;->this$0:Lcom/perm/kate/EditAudioActivity;

    move-object v10, v9

    invoke-virtual/range {v1 .. v12}, Lcom/perm/kate/session/Session;->editAudio(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 133
    return-void
.end method
