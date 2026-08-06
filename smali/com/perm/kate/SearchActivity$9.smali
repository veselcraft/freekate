.class Lcom/perm/kate/SearchActivity$9;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/SearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/SearchActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/SearchActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/SearchActivity;

    .prologue
    .line 454
    iput-object p1, p0, Lcom/perm/kate/SearchActivity$9;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 457
    iget-object v4, p0, Lcom/perm/kate/SearchActivity$9;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v4}, Lcom/perm/kate/SearchActivity;->access$4700(Lcom/perm/kate/SearchActivity;)Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/perm/kate/SearchActivity$9;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v4}, Lcom/perm/kate/SearchActivity;->access$4700(Lcom/perm/kate/SearchActivity;)Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    instance-of v4, v4, Lcom/perm/kate/AudioListAdapter;

    if-eqz v4, :cond_1

    .line 458
    iget-object v4, p0, Lcom/perm/kate/SearchActivity$9;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v4}, Lcom/perm/kate/SearchActivity;->access$4700(Lcom/perm/kate/SearchActivity;)Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    check-cast v4, Lcom/perm/kate/AudioListAdapter;

    invoke-virtual {v4}, Lcom/perm/kate/AudioListAdapter;->getCheckedAudios()Ljava/lang/String;

    move-result-object v1

    .line 459
    .local v1, "audios":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 462
    iget-object v4, p0, Lcom/perm/kate/SearchActivity$9;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v4}, Lcom/perm/kate/SearchActivity;->access$4700(Lcom/perm/kate/SearchActivity;)Landroid/widget/ListView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    check-cast v4, Lcom/perm/kate/AudioListAdapter;

    invoke-virtual {v4}, Lcom/perm/kate/AudioListAdapter;->getCheckedAudioObjects()Ljava/util/Set;

    move-result-object v0

    .line 463
    .local v0, "audio_objects":Ljava/util/Set;, "Ljava/util/Set<Lcom/perm/kate/api/Audio;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/perm/kate/api/Audio;

    .line 464
    .local v2, "entry":Lcom/perm/kate/api/Audio;
    sget-object v5, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v5, v2}, Lcom/perm/kate/db/DataHelper;->createOrUpdateAudio(Lcom/perm/kate/api/Audio;)V

    goto :goto_0

    .line 466
    .end local v2    # "entry":Lcom/perm/kate/api/Audio;
    :cond_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 467
    .local v3, "i":Landroid/content/Intent;
    const-string v4, "audios"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 468
    iget-object v4, p0, Lcom/perm/kate/SearchActivity$9;->this$0:Lcom/perm/kate/SearchActivity;

    const/4 v5, -0x1

    invoke-virtual {v4, v5, v3}, Lcom/perm/kate/SearchActivity;->setResult(ILandroid/content/Intent;)V

    .line 469
    iget-object v4, p0, Lcom/perm/kate/SearchActivity$9;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-virtual {v4}, Lcom/perm/kate/SearchActivity;->finish()V

    .line 473
    .end local v0    # "audio_objects":Ljava/util/Set;, "Ljava/util/Set<Lcom/perm/kate/api/Audio;>;"
    .end local v1    # "audios":Ljava/lang/String;
    .end local v3    # "i":Landroid/content/Intent;
    :cond_1
    :goto_1
    return-void

    .line 471
    .restart local v1    # "audios":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/perm/kate/SearchActivity$9;->this$0:Lcom/perm/kate/SearchActivity;

    const v5, 0x7f0704c2

    invoke-virtual {v4, v5}, Lcom/perm/kate/SearchActivity;->displayToast(I)V

    goto :goto_1
.end method
