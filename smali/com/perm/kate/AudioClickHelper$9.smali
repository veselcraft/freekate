.class Lcom/perm/kate/AudioClickHelper$9;
.super Ljava/lang/Thread;
.source "AudioClickHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/AudioClickHelper;->downloadAudios(Lcom/perm/kate/api/Audio;Ljava/util/ArrayList;Lcom/perm/kate/AudioClickHelperCallback2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AudioClickHelper;

.field final synthetic val$audio_original:Lcom/perm/kate/api/Audio;

.field final synthetic val$audios_original:Ljava/util/ArrayList;

.field final synthetic val$callback2:Lcom/perm/kate/AudioClickHelperCallback2;


# direct methods
.method constructor <init>(Lcom/perm/kate/AudioClickHelper;Lcom/perm/kate/api/Audio;Lcom/perm/kate/AudioClickHelperCallback2;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/AudioClickHelper;

    .prologue
    .line 421
    iput-object p1, p0, Lcom/perm/kate/AudioClickHelper$9;->this$0:Lcom/perm/kate/AudioClickHelper;

    iput-object p2, p0, Lcom/perm/kate/AudioClickHelper$9;->val$audio_original:Lcom/perm/kate/api/Audio;

    iput-object p3, p0, Lcom/perm/kate/AudioClickHelper$9;->val$callback2:Lcom/perm/kate/AudioClickHelperCallback2;

    iput-object p4, p0, Lcom/perm/kate/AudioClickHelper$9;->val$audios_original:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 424
    new-instance v1, Lcom/perm/kate/AudioClickHelper$9$1;

    iget-object v2, p0, Lcom/perm/kate/AudioClickHelper$9;->this$0:Lcom/perm/kate/AudioClickHelper;

    iget-object v2, v2, Lcom/perm/kate/AudioClickHelper;->context:Lcom/perm/kate/BaseActivity;

    invoke-direct {v1, p0, v2}, Lcom/perm/kate/AudioClickHelper$9$1;-><init>(Lcom/perm/kate/AudioClickHelper$9;Landroid/app/Activity;)V

    .line 445
    .local v1, "callback":Lcom/perm/kate/session/Callback;
    iget-object v2, p0, Lcom/perm/kate/AudioClickHelper$9;->this$0:Lcom/perm/kate/AudioClickHelper;

    iget-object v3, p0, Lcom/perm/kate/AudioClickHelper$9;->val$audios_original:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Lcom/perm/kate/AudioClickHelper;->access$900(Lcom/perm/kate/AudioClickHelper;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    .line 446
    .local v0, "audios":Ljava/lang/String;
    iget-object v2, p0, Lcom/perm/kate/AudioClickHelper$9;->this$0:Lcom/perm/kate/AudioClickHelper;

    iget-object v2, v2, Lcom/perm/kate/AudioClickHelper;->context:Lcom/perm/kate/BaseActivity;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/perm/kate/AudioClickHelper$9;->this$0:Lcom/perm/kate/AudioClickHelper;

    iget-object v2, v2, Lcom/perm/kate/AudioClickHelper;->context:Lcom/perm/kate/BaseActivity;

    invoke-virtual {v2}, Lcom/perm/kate/BaseActivity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 452
    :cond_0
    :goto_0
    return-void

    .line 448
    :cond_1
    iget-object v2, p0, Lcom/perm/kate/AudioClickHelper$9;->this$0:Lcom/perm/kate/AudioClickHelper;

    iget-object v2, v2, Lcom/perm/kate/AudioClickHelper;->context:Lcom/perm/kate/BaseActivity;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    .line 449
    sget-object v2, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v3, p0, Lcom/perm/kate/AudioClickHelper$9;->this$0:Lcom/perm/kate/AudioClickHelper;

    iget-object v3, v3, Lcom/perm/kate/AudioClickHelper;->context:Lcom/perm/kate/BaseActivity;

    invoke-virtual {v2, v0, v1, v3}, Lcom/perm/kate/session/Session;->getAudioById(Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 450
    iget-object v2, p0, Lcom/perm/kate/AudioClickHelper$9;->this$0:Lcom/perm/kate/AudioClickHelper;

    iget-object v2, v2, Lcom/perm/kate/AudioClickHelper;->context:Lcom/perm/kate/BaseActivity;

    if-eqz v2, :cond_0

    .line 451
    iget-object v2, p0, Lcom/perm/kate/AudioClickHelper$9;->this$0:Lcom/perm/kate/AudioClickHelper;

    iget-object v2, v2, Lcom/perm/kate/AudioClickHelper;->context:Lcom/perm/kate/BaseActivity;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/perm/kate/BaseActivity;->showProgressBar(Z)V

    goto :goto_0
.end method
