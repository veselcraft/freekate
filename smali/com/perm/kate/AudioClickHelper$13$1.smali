.class Lcom/perm/kate/AudioClickHelper$13$1;
.super Lcom/perm/kate/session/Callback;
.source "AudioClickHelper.java"


# instance fields
.field final synthetic this$1:Lcom/perm/kate/AudioClickHelper$13;


# direct methods
.method constructor <init>(Lcom/perm/kate/AudioClickHelper$13;Landroid/app/Activity;)V
    .locals 0

    .line 638
    iput-object p1, p0, Lcom/perm/kate/AudioClickHelper$13$1;->this$1:Lcom/perm/kate/AudioClickHelper$13;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 4

    .line 642
    check-cast p1, Ljava/util/ArrayList;

    if-eqz p1, :cond_3

    .line 643
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 645
    :cond_0
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v0, p1}, Lcom/perm/kate/db/DataHelper;->createOrUpdateAudios(Ljava/util/ArrayList;)V

    .line 646
    iget-object v0, p0, Lcom/perm/kate/AudioClickHelper$13$1;->this$1:Lcom/perm/kate/AudioClickHelper$13;

    iget-object v0, v0, Lcom/perm/kate/AudioClickHelper$13;->this$0:Lcom/perm/kate/AudioClickHelper;

    invoke-static {v0, p1}, Lcom/perm/kate/AudioClickHelper;->access$1100(Lcom/perm/kate/AudioClickHelper;Ljava/util/ArrayList;)Ljava/util/HashMap;

    move-result-object v0

    .line 647
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/perm/kate/AudioClickHelper$13$1;->this$1:Lcom/perm/kate/AudioClickHelper$13;

    iget-object v2, v2, Lcom/perm/kate/AudioClickHelper$13;->val$audio_original:Lcom/perm/kate/api/Audio;

    iget-wide v2, v2, Lcom/perm/kate/api/Audio;->owner_id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/perm/kate/AudioClickHelper$13$1;->this$1:Lcom/perm/kate/AudioClickHelper$13;

    iget-object v2, v2, Lcom/perm/kate/AudioClickHelper$13;->val$audio_original:Lcom/perm/kate/api/Audio;

    iget-wide v2, v2, Lcom/perm/kate/api/Audio;->aid:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Audio;

    if-nez v0, :cond_1

    return-void

    .line 650
    :cond_1
    iget-object v1, p0, Lcom/perm/kate/AudioClickHelper$13$1;->this$1:Lcom/perm/kate/AudioClickHelper$13;

    iget-object v1, v1, Lcom/perm/kate/AudioClickHelper$13;->this$0:Lcom/perm/kate/AudioClickHelper;

    iget-object v1, v1, Lcom/perm/kate/AudioClickHelper;->context:Lcom/perm/kate/BaseActivity;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 652
    :cond_2
    iget-object v1, p0, Lcom/perm/kate/AudioClickHelper$13$1;->this$1:Lcom/perm/kate/AudioClickHelper$13;

    iget-object v1, v1, Lcom/perm/kate/AudioClickHelper$13;->this$0:Lcom/perm/kate/AudioClickHelper;

    iget-object v1, v1, Lcom/perm/kate/AudioClickHelper;->context:Lcom/perm/kate/BaseActivity;

    new-instance v2, Lcom/perm/kate/AudioClickHelper$13$1$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/perm/kate/AudioClickHelper$13$1$1;-><init>(Lcom/perm/kate/AudioClickHelper$13$1;Lcom/perm/kate/api/Audio;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_3
    :goto_0
    return-void
.end method
