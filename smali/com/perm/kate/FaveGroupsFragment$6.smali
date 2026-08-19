.class Lcom/perm/kate/FaveGroupsFragment$6;
.super Lcom/perm/kate/session/Callback;
.source "FaveGroupsFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FaveGroupsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/FaveGroupsFragment;Landroid/app/Activity;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/perm/kate/FaveGroupsFragment$6;->this$0:Lcom/perm/kate/FaveGroupsFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 175
    iget-object p1, p0, Lcom/perm/kate/FaveGroupsFragment$6;->this$0:Lcom/perm/kate/FaveGroupsFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 2

    .line 164
    iget-object v0, p0, Lcom/perm/kate/FaveGroupsFragment$6;->this$0:Lcom/perm/kate/FaveGroupsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/FaveGroupsFragment$6;->this$0:Lcom/perm/kate/FaveGroupsFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 167
    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    .line 168
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 169
    iget-object p1, p0, Lcom/perm/kate/FaveGroupsFragment$6;->this$0:Lcom/perm/kate/FaveGroupsFragment;

    const v0, 0x7f0f0526

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseFragment;->displayToast(I)V

    .line 170
    iget-object p1, p0, Lcom/perm/kate/FaveGroupsFragment$6;->this$0:Lcom/perm/kate/FaveGroupsFragment;

    invoke-virtual {p1}, Lcom/perm/kate/FaveGroupsFragment;->refreshInThread()V

    :cond_1
    return-void
.end method
