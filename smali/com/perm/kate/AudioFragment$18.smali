.class Lcom/perm/kate/AudioFragment$18;
.super Ljava/lang/Object;
.source "AudioFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AudioFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/AudioFragment;)V
    .locals 0

    .line 711
    iput-object p1, p0, Lcom/perm/kate/AudioFragment$18;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 714
    iget-object p1, p0, Lcom/perm/kate/AudioFragment$18;->this$0:Lcom/perm/kate/AudioFragment;

    iget-object p1, p1, Lcom/perm/kate/AudioFragment;->adapter:Lcom/perm/kate/AudioListAdapter;

    if-eqz p1, :cond_1

    .line 715
    invoke-virtual {p1}, Lcom/perm/kate/AudioListAdapter;->getCheckedAudios()Ljava/lang/String;

    move-result-object p1

    .line 716
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 717
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "audios"

    .line 718
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 719
    iget-object p1, p0, Lcom/perm/kate/AudioFragment$18;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const/4 v1, -0x1

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 720
    iget-object p1, p0, Lcom/perm/kate/AudioFragment$18;->this$0:Lcom/perm/kate/AudioFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 722
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/AudioFragment$18;->this$0:Lcom/perm/kate/AudioFragment;

    const v0, 0x7f0f0548

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseFragment;->displayToast(I)V

    :cond_1
    :goto_0
    return-void
.end method
