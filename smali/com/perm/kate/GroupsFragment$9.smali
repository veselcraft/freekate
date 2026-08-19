.class Lcom/perm/kate/GroupsFragment$9;
.super Lcom/perm/kate/session/Callback;
.source "GroupsFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GroupsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/GroupsFragment;Landroid/app/Activity;)V
    .locals 0

    .line 293
    iput-object p1, p0, Lcom/perm/kate/GroupsFragment$9;->this$0:Lcom/perm/kate/GroupsFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2

    .line 307
    iget-object v0, p0, Lcom/perm/kate/GroupsFragment$9;->this$0:Lcom/perm/kate/GroupsFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 308
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 2

    .line 296
    iget-object v0, p0, Lcom/perm/kate/GroupsFragment$9;->this$0:Lcom/perm/kate/GroupsFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 297
    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    const-string v0, "1"

    .line 298
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 299
    iget-object p1, p0, Lcom/perm/kate/GroupsFragment$9;->this$0:Lcom/perm/kate/GroupsFragment;

    const v0, 0x7f0f053e

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseFragment;->displayToast(I)V

    .line 301
    iget-object p1, p0, Lcom/perm/kate/GroupsFragment$9;->this$0:Lcom/perm/kate/GroupsFragment;

    invoke-virtual {p1}, Lcom/perm/kate/GroupsFragment;->refreshInThread()V

    :cond_0
    return-void
.end method
