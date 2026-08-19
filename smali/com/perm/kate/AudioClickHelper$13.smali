.class Lcom/perm/kate/AudioClickHelper$13;
.super Ljava/lang/Thread;
.source "AudioClickHelper.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AudioClickHelper;

.field final synthetic val$audio_original:Lcom/perm/kate/api/Audio;

.field final synthetic val$audios_original:Ljava/util/ArrayList;

.field final synthetic val$callback2:Lcom/perm/kate/AudioClickHelperCallback2;


# direct methods
.method constructor <init>(Lcom/perm/kate/AudioClickHelper;Lcom/perm/kate/api/Audio;Lcom/perm/kate/AudioClickHelperCallback2;Ljava/util/ArrayList;)V
    .locals 0

    .line 635
    iput-object p1, p0, Lcom/perm/kate/AudioClickHelper$13;->this$0:Lcom/perm/kate/AudioClickHelper;

    iput-object p2, p0, Lcom/perm/kate/AudioClickHelper$13;->val$audio_original:Lcom/perm/kate/api/Audio;

    iput-object p3, p0, Lcom/perm/kate/AudioClickHelper$13;->val$callback2:Lcom/perm/kate/AudioClickHelperCallback2;

    iput-object p4, p0, Lcom/perm/kate/AudioClickHelper$13;->val$audios_original:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 638
    new-instance v0, Lcom/perm/kate/AudioClickHelper$13$1;

    iget-object v1, p0, Lcom/perm/kate/AudioClickHelper$13;->this$0:Lcom/perm/kate/AudioClickHelper;

    iget-object v1, v1, Lcom/perm/kate/AudioClickHelper;->context:Lcom/perm/kate/BaseActivity;

    invoke-direct {v0, p0, v1}, Lcom/perm/kate/AudioClickHelper$13$1;-><init>(Lcom/perm/kate/AudioClickHelper$13;Landroid/app/Activity;)V

    .line 659
    iget-object v1, p0, Lcom/perm/kate/AudioClickHelper$13;->this$0:Lcom/perm/kate/AudioClickHelper;

    iget-object v2, p0, Lcom/perm/kate/AudioClickHelper$13;->val$audios_original:Ljava/util/ArrayList;

    invoke-static {v1, v2}, Lcom/perm/kate/AudioClickHelper;->access$1200(Lcom/perm/kate/AudioClickHelper;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    .line 660
    iget-object v2, p0, Lcom/perm/kate/AudioClickHelper$13;->this$0:Lcom/perm/kate/AudioClickHelper;

    iget-object v2, v2, Lcom/perm/kate/AudioClickHelper;->context:Lcom/perm/kate/BaseActivity;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 662
    :cond_0
    iget-object v2, p0, Lcom/perm/kate/AudioClickHelper$13;->this$0:Lcom/perm/kate/AudioClickHelper;

    iget-object v2, v2, Lcom/perm/kate/AudioClickHelper;->context:Lcom/perm/kate/BaseActivity;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 663
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v3, p0, Lcom/perm/kate/AudioClickHelper$13;->this$0:Lcom/perm/kate/AudioClickHelper;

    iget-object v3, v3, Lcom/perm/kate/AudioClickHelper;->context:Lcom/perm/kate/BaseActivity;

    invoke-virtual {v2, v1, v0, v3}, Lcom/perm/kate/session/Session;->getAudioById(Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 664
    iget-object v0, p0, Lcom/perm/kate/AudioClickHelper$13;->this$0:Lcom/perm/kate/AudioClickHelper;

    iget-object v0, v0, Lcom/perm/kate/AudioClickHelper;->context:Lcom/perm/kate/BaseActivity;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 665
    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    :cond_1
    :goto_0
    return-void
.end method
