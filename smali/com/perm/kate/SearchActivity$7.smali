.class Lcom/perm/kate/SearchActivity$7;
.super Ljava/lang/Object;
.source "SearchActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 406
    iput-object p1, p0, Lcom/perm/kate/SearchActivity$7;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v2, 0x0

    .line 409
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/api/Audio;

    .line 410
    .local v1, "a":Lcom/perm/kate/api/Audio;
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$7;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v0}, Lcom/perm/kate/SearchActivity;->access$4500(Lcom/perm/kate/SearchActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 411
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 412
    .local v6, "i":Landroid/content/Intent;
    const-string v0, "audio_id"

    iget-wide v2, v1, Lcom/perm/kate/api/Audio;->aid:J

    invoke-virtual {v6, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 413
    const-string v0, "owner_id"

    iget-wide v2, v1, Lcom/perm/kate/api/Audio;->owner_id:J

    invoke-virtual {v6, v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 414
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$7;->this$0:Lcom/perm/kate/SearchActivity;

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v6}, Lcom/perm/kate/SearchActivity;->setResult(ILandroid/content/Intent;)V

    .line 415
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$7;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-virtual {v0}, Lcom/perm/kate/SearchActivity;->finish()V

    .line 417
    sget-object v0, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    invoke-virtual {v0, v1}, Lcom/perm/kate/db/DataHelper;->createOrUpdateAudio(Lcom/perm/kate/api/Audio;)V

    .line 420
    .end local v6    # "i":Landroid/content/Intent;
    :goto_0
    return-void

    .line 419
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/SearchActivity$7;->this$0:Lcom/perm/kate/SearchActivity;

    iget-object v0, v0, Lcom/perm/kate/SearchActivity;->audioHelper:Lcom/perm/kate/AudioClickHelper;

    iget-object v3, p0, Lcom/perm/kate/SearchActivity$7;->this$0:Lcom/perm/kate/SearchActivity;

    invoke-static {v3}, Lcom/perm/kate/SearchActivity;->access$4400(Lcom/perm/kate/SearchActivity;)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v5, 0x7

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Lcom/perm/kate/AudioClickHelper;->CreateContextMenu(Lcom/perm/kate/api/Audio;ZLjava/util/ArrayList;ZI)V

    goto :goto_0
.end method
