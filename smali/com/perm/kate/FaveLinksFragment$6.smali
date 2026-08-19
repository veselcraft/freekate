.class Lcom/perm/kate/FaveLinksFragment$6;
.super Lcom/perm/kate/session/Callback;
.source "FaveLinksFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FaveLinksFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/FaveLinksFragment;Landroid/app/Activity;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/perm/kate/FaveLinksFragment$6;->this$0:Lcom/perm/kate/FaveLinksFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 177
    iget-object p1, p0, Lcom/perm/kate/FaveLinksFragment$6;->this$0:Lcom/perm/kate/FaveLinksFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/perm/kate/FaveLinksFragment$6;->this$0:Lcom/perm/kate/FaveLinksFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/FaveLinksFragment$6;->this$0:Lcom/perm/kate/FaveLinksFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 169
    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    .line 170
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 171
    iget-object p1, p0, Lcom/perm/kate/FaveLinksFragment$6;->this$0:Lcom/perm/kate/FaveLinksFragment;

    const v0, 0x7f0f0526

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseFragment;->displayToast(I)V

    .line 172
    iget-object p1, p0, Lcom/perm/kate/FaveLinksFragment$6;->this$0:Lcom/perm/kate/FaveLinksFragment;

    invoke-virtual {p1}, Lcom/perm/kate/FaveLinksFragment;->refreshInThread()V

    :cond_1
    return-void
.end method
