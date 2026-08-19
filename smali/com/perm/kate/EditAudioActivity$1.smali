.class Lcom/perm/kate/EditAudioActivity$1;
.super Ljava/lang/Thread;
.source "EditAudioActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/EditAudioActivity;->getAudioTextInThread()V
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

    .line 49
    iput-object p1, p0, Lcom/perm/kate/EditAudioActivity$1;->this$0:Lcom/perm/kate/EditAudioActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 52
    iget-object v0, p0, Lcom/perm/kate/EditAudioActivity$1;->this$0:Lcom/perm/kate/EditAudioActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 53
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v0, p0, Lcom/perm/kate/EditAudioActivity$1;->this$0:Lcom/perm/kate/EditAudioActivity;

    invoke-static {v0}, Lcom/perm/kate/EditAudioActivity;->access$000(Lcom/perm/kate/EditAudioActivity;)Lcom/perm/kate/api/Audio;

    move-result-object v0

    iget-object v3, v0, Lcom/perm/kate/api/Audio;->lyrics_id:Ljava/lang/Long;

    iget-object v0, p0, Lcom/perm/kate/EditAudioActivity$1;->this$0:Lcom/perm/kate/EditAudioActivity;

    invoke-static {v0}, Lcom/perm/kate/EditAudioActivity;->access$000(Lcom/perm/kate/EditAudioActivity;)Lcom/perm/kate/api/Audio;

    move-result-object v0

    iget-wide v4, v0, Lcom/perm/kate/api/Audio;->aid:J

    iget-object v0, p0, Lcom/perm/kate/EditAudioActivity$1;->this$0:Lcom/perm/kate/EditAudioActivity;

    invoke-static {v0}, Lcom/perm/kate/EditAudioActivity;->access$100(Lcom/perm/kate/EditAudioActivity;)Lcom/perm/kate/session/Callback;

    move-result-object v6

    iget-object v7, p0, Lcom/perm/kate/EditAudioActivity$1;->this$0:Lcom/perm/kate/EditAudioActivity;

    invoke-virtual/range {v2 .. v7}, Lcom/perm/kate/session/Session;->getLyrics(Ljava/lang/Long;JLcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
