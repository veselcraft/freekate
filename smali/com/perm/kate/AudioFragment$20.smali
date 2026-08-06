.class Lcom/perm/kate/AudioFragment$20;
.super Ljava/lang/Thread;
.source "AudioFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/AudioFragment;->audiosToCache(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AudioFragment;

.field final synthetic val$count:I


# direct methods
.method constructor <init>(Lcom/perm/kate/AudioFragment;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/AudioFragment;

    .prologue
    .line 689
    iput-object p1, p0, Lcom/perm/kate/AudioFragment$20;->this$0:Lcom/perm/kate/AudioFragment;

    iput p2, p0, Lcom/perm/kate/AudioFragment$20;->val$count:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 693
    iget v2, p0, Lcom/perm/kate/AudioFragment$20;->val$count:I

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/perm/kate/AudioFragment$20;->this$0:Lcom/perm/kate/AudioFragment;

    iget-object v2, v2, Lcom/perm/kate/AudioFragment;->audios:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget v3, p0, Lcom/perm/kate/AudioFragment$20;->val$count:I

    if-le v2, v3, :cond_0

    .line 694
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/perm/kate/AudioFragment$20;->this$0:Lcom/perm/kate/AudioFragment;

    iget-object v2, v2, Lcom/perm/kate/AudioFragment;->audios:Ljava/util/ArrayList;

    const/4 v3, 0x0

    iget v4, p0, Lcom/perm/kate/AudioFragment$20;->val$count:I

    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 695
    .local v1, "audios_chunk":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Audio;>;"
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v2, v1}, Lcom/perm/kate/db/DataHelper;->addNewAudiosToCache(Ljava/util/ArrayList;)Z

    move-result v0

    .line 698
    .end local v1    # "audios_chunk":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/Audio;>;"
    .local v0, "all_cached":Z
    :goto_0
    sget-object v2, Lcom/perm/kate/KApplication;->current:Landroid/app/Application;

    invoke-static {v2}, Lcom/perm/kate/audio_cache/AudioCache;->startService(Landroid/content/Context;)V

    .line 699
    if-eqz v0, :cond_1

    .line 700
    iget-object v2, p0, Lcom/perm/kate/AudioFragment$20;->this$0:Lcom/perm/kate/AudioFragment;

    const v3, 0x7f070498

    invoke-virtual {v2, v3}, Lcom/perm/kate/AudioFragment;->displayToast(I)V

    .line 703
    :goto_1
    return-void

    .line 697
    .end local v0    # "all_cached":Z
    :cond_0
    sget-object v2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    iget-object v3, p0, Lcom/perm/kate/AudioFragment$20;->this$0:Lcom/perm/kate/AudioFragment;

    iget-object v3, v3, Lcom/perm/kate/AudioFragment;->audios:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Lcom/perm/kate/db/DataHelper;->addNewAudiosToCache(Ljava/util/ArrayList;)Z

    move-result v0

    .restart local v0    # "all_cached":Z
    goto :goto_0

    .line 702
    :cond_1
    iget-object v2, p0, Lcom/perm/kate/AudioFragment$20;->this$0:Lcom/perm/kate/AudioFragment;

    const v3, 0x7f0704d7

    invoke-virtual {v2, v3}, Lcom/perm/kate/AudioFragment;->displayToast(I)V

    goto :goto_1
.end method
