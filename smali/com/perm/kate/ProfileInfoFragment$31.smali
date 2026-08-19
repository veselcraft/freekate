.class Lcom/perm/kate/ProfileInfoFragment$31;
.super Lcom/perm/kate/session/Callback;
.source "ProfileInfoFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ProfileInfoFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/ProfileInfoFragment;Landroid/app/Activity;)V
    .locals 0

    .line 1143
    iput-object p1, p0, Lcom/perm/kate/ProfileInfoFragment$31;->this$0:Lcom/perm/kate/ProfileInfoFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 1157
    iget-object p1, p0, Lcom/perm/kate/ProfileInfoFragment$31;->this$0:Lcom/perm/kate/ProfileInfoFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 2

    .line 1146
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoFragment$31;->this$0:Lcom/perm/kate/ProfileInfoFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1148
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/ProfileInfoFragment$31;->this$0:Lcom/perm/kate/ProfileInfoFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 1149
    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    .line 1150
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1151
    iget-object p1, p0, Lcom/perm/kate/ProfileInfoFragment$31;->this$0:Lcom/perm/kate/ProfileInfoFragment;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/perm/kate/ProfileInfoFragment;->access$2602(Lcom/perm/kate/ProfileInfoFragment;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 1152
    iget-object p1, p0, Lcom/perm/kate/ProfileInfoFragment$31;->this$0:Lcom/perm/kate/ProfileInfoFragment;

    const v0, 0x7f0f0526

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseFragment;->displayToast(I)V

    :cond_1
    return-void
.end method
