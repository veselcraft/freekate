.class Lcom/perm/kate/AudioFragment$14;
.super Lcom/perm/kate/session/Callback;
.source "AudioFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AudioFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/AudioFragment;Landroid/app/Activity;)V
    .locals 0

    .line 622
    iput-object p1, p0, Lcom/perm/kate/AudioFragment$14;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 0

    .line 637
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 638
    iget-object p1, p0, Lcom/perm/kate/AudioFragment$14;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-static {p1}, Lcom/perm/kate/AudioFragment;->access$2100(Lcom/perm/kate/AudioFragment;)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 3

    .line 625
    check-cast p1, Lcom/perm/kate/api/Audio;

    .line 626
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v0, p1}, Lcom/perm/kate/db/DataHelper;->createOrUpdateAudio(Lcom/perm/kate/api/Audio;)V

    .line 627
    invoke-static {}, Lcom/perm/kate/notifications/PhotoUploadNotification;->cancel()V

    .line 628
    iget-object v0, p0, Lcom/perm/kate/AudioFragment$14;->this$0:Lcom/perm/kate/AudioFragment;

    const v1, 0x7f0f057a

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseFragment;->displayToast(Ljava/lang/String;)V

    .line 629
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 630
    iget-wide v1, p1, Lcom/perm/kate/api/Audio;->aid:J

    const-string p1, "audio_id"

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 631
    iget-object p1, p0, Lcom/perm/kate/AudioFragment$14;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 v1, -0x1

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 632
    iget-object p1, p0, Lcom/perm/kate/AudioFragment$14;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-static {p1}, Lcom/perm/kate/AudioFragment;->access$1800(Lcom/perm/kate/AudioFragment;)V

    return-void
.end method
