.class Lcom/perm/kate/AudioFragment$11;
.super Lcom/perm/kate/session/Callback;
.source "AudioFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/AudioFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AudioFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/AudioFragment;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/AudioFragment;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 488
    iput-object p1, p0, Lcom/perm/kate/AudioFragment$11;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 503
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 504
    iget-object v0, p0, Lcom/perm/kate/AudioFragment$11;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-static {v0}, Lcom/perm/kate/AudioFragment;->access$1300(Lcom/perm/kate/AudioFragment;)V

    .line 505
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 6
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 491
    move-object v0, p1

    check-cast v0, Lcom/perm/kate/api/Audio;

    .line 492
    .local v0, "audio":Lcom/perm/kate/api/Audio;
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v2, v0}, Lcom/perm/kate/db/DataHelper;->createOrUpdateAudio(Lcom/perm/kate/api/Audio;)V

    .line 493
    iget-object v2, p0, Lcom/perm/kate/AudioFragment$11;->this$0:Lcom/perm/kate/AudioFragment;

    iget-object v2, v2, Lcom/perm/kate/AudioFragment;->notification:Lcom/perm/kate/notifications/PhotoUploadNotification;

    invoke-static {}, Lcom/perm/kate/notifications/PhotoUploadNotification;->cancel()V

    .line 494
    iget-object v2, p0, Lcom/perm/kate/AudioFragment$11;->this$0:Lcom/perm/kate/AudioFragment;

    iget-object v3, p0, Lcom/perm/kate/AudioFragment$11;->this$0:Lcom/perm/kate/AudioFragment;

    const v4, 0x7f0704f5

    invoke-virtual {v3, v4}, Lcom/perm/kate/AudioFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/perm/kate/AudioFragment;->displayToast(Ljava/lang/String;)V

    .line 495
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 496
    .local v1, "i":Landroid/content/Intent;
    const-string v2, "audio_id"

    iget-wide v4, v0, Lcom/perm/kate/api/Audio;->aid:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 497
    iget-object v2, p0, Lcom/perm/kate/AudioFragment$11;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-virtual {v2}, Lcom/perm/kate/AudioFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v1}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 498
    iget-object v2, p0, Lcom/perm/kate/AudioFragment$11;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-static {v2}, Lcom/perm/kate/AudioFragment;->access$1400(Lcom/perm/kate/AudioFragment;)V

    .line 499
    return-void
.end method
