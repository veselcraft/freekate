.class Lcom/perm/kate/AudioFragment$15;
.super Ljava/lang/Object;
.source "AudioFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
.method constructor <init>(Lcom/perm/kate/AudioFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/AudioFragment;

    .prologue
    .line 582
    iput-object p1, p0, Lcom/perm/kate/AudioFragment$15;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 585
    iget-object v2, p0, Lcom/perm/kate/AudioFragment$15;->this$0:Lcom/perm/kate/AudioFragment;

    iget-object v2, v2, Lcom/perm/kate/AudioFragment;->adapter:Lcom/perm/kate/AudioListAdapter;

    if-eqz v2, :cond_0

    .line 586
    iget-object v2, p0, Lcom/perm/kate/AudioFragment$15;->this$0:Lcom/perm/kate/AudioFragment;

    iget-object v2, v2, Lcom/perm/kate/AudioFragment;->adapter:Lcom/perm/kate/AudioListAdapter;

    invoke-virtual {v2}, Lcom/perm/kate/AudioListAdapter;->getCheckedAudios()Ljava/lang/String;

    move-result-object v0

    .line 587
    .local v0, "audios":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 588
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 589
    .local v1, "i":Landroid/content/Intent;
    const-string v2, "audios"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 590
    iget-object v2, p0, Lcom/perm/kate/AudioFragment$15;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-virtual {v2}, Lcom/perm/kate/AudioFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3, v1}, Landroid/support/v4/app/FragmentActivity;->setResult(ILandroid/content/Intent;)V

    .line 591
    iget-object v2, p0, Lcom/perm/kate/AudioFragment$15;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-virtual {v2}, Lcom/perm/kate/AudioFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 595
    .end local v0    # "audios":Ljava/lang/String;
    .end local v1    # "i":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 593
    .restart local v0    # "audios":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/perm/kate/AudioFragment$15;->this$0:Lcom/perm/kate/AudioFragment;

    const v3, 0x7f0704c2

    invoke-virtual {v2, v3}, Lcom/perm/kate/AudioFragment;->displayToast(I)V

    goto :goto_0
.end method
