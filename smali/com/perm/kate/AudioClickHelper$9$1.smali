.class Lcom/perm/kate/AudioClickHelper$9$1;
.super Lcom/perm/kate/session/Callback;
.source "AudioClickHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/AudioClickHelper$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/AudioClickHelper$9;


# direct methods
.method constructor <init>(Lcom/perm/kate/AudioClickHelper$9;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$1"    # Lcom/perm/kate/AudioClickHelper$9;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 424
    iput-object p1, p0, Lcom/perm/kate/AudioClickHelper$9$1;->this$1:Lcom/perm/kate/AudioClickHelper$9;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 6
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 428
    move-object v1, p1

    check-cast v1, Ljava/util/ArrayList;

    .line 429
    .local v1, "audios":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Audio;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 443
    :cond_0
    :goto_0
    return-void

    .line 431
    :cond_1
    sget-object v3, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v3, v1}, Lcom/perm/kate/db/DataHelper;->createOrUpdateAudios(Ljava/util/ArrayList;)V

    .line 432
    iget-object v3, p0, Lcom/perm/kate/AudioClickHelper$9$1;->this$1:Lcom/perm/kate/AudioClickHelper$9;

    iget-object v3, v3, Lcom/perm/kate/AudioClickHelper$9;->this$0:Lcom/perm/kate/AudioClickHelper;

    invoke-static {v3, v1}, Lcom/perm/kate/AudioClickHelper;->access$800(Lcom/perm/kate/AudioClickHelper;Ljava/util/ArrayList;)Ljava/util/HashMap;

    move-result-object v2

    .line 433
    .local v2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/perm/kate/api/Audio;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/perm/kate/AudioClickHelper$9$1;->this$1:Lcom/perm/kate/AudioClickHelper$9;

    iget-object v4, v4, Lcom/perm/kate/AudioClickHelper$9;->val$audio_original:Lcom/perm/kate/api/Audio;

    iget-wide v4, v4, Lcom/perm/kate/api/Audio;->owner_id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/perm/kate/AudioClickHelper$9$1;->this$1:Lcom/perm/kate/AudioClickHelper$9;

    iget-object v4, v4, Lcom/perm/kate/AudioClickHelper$9;->val$audio_original:Lcom/perm/kate/api/Audio;

    iget-wide v4, v4, Lcom/perm/kate/api/Audio;->aid:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Audio;

    .line 434
    .local v0, "a":Lcom/perm/kate/api/Audio;
    if-eqz v0, :cond_0

    .line 436
    iget-object v3, p0, Lcom/perm/kate/AudioClickHelper$9$1;->this$1:Lcom/perm/kate/AudioClickHelper$9;

    iget-object v3, v3, Lcom/perm/kate/AudioClickHelper$9;->this$0:Lcom/perm/kate/AudioClickHelper;

    iget-object v3, v3, Lcom/perm/kate/AudioClickHelper;->context:Lcom/perm/kate/BaseActivity;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/perm/kate/AudioClickHelper$9$1;->this$1:Lcom/perm/kate/AudioClickHelper$9;

    iget-object v3, v3, Lcom/perm/kate/AudioClickHelper$9;->this$0:Lcom/perm/kate/AudioClickHelper;

    iget-object v3, v3, Lcom/perm/kate/AudioClickHelper;->context:Lcom/perm/kate/BaseActivity;

    invoke-virtual {v3}, Lcom/perm/kate/BaseActivity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 438
    iget-object v3, p0, Lcom/perm/kate/AudioClickHelper$9$1;->this$1:Lcom/perm/kate/AudioClickHelper$9;

    iget-object v3, v3, Lcom/perm/kate/AudioClickHelper$9;->this$0:Lcom/perm/kate/AudioClickHelper;

    iget-object v3, v3, Lcom/perm/kate/AudioClickHelper;->context:Lcom/perm/kate/BaseActivity;

    new-instance v4, Lcom/perm/kate/AudioClickHelper$9$1$1;

    invoke-direct {v4, p0, v0, v1}, Lcom/perm/kate/AudioClickHelper$9$1$1;-><init>(Lcom/perm/kate/AudioClickHelper$9$1;Lcom/perm/kate/api/Audio;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v4}, Lcom/perm/kate/BaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
