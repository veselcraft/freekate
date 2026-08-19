.class Lcom/perm/kate/NotificationsFragment$3;
.super Lcom/perm/kate/session/Callback;
.source "NotificationsFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NotificationsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/NotificationsFragment;Landroid/app/Activity;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/perm/kate/NotificationsFragment$3;->this$0:Lcom/perm/kate/NotificationsFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 129
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 130
    iget-object p1, p0, Lcom/perm/kate/NotificationsFragment$3;->this$0:Lcom/perm/kate/NotificationsFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 131
    iget-object p1, p0, Lcom/perm/kate/NotificationsFragment$3;->this$0:Lcom/perm/kate/NotificationsFragment;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/perm/kate/NotificationsFragment;->access$102(Lcom/perm/kate/NotificationsFragment;I)I

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 3

    .line 116
    iget-object v0, p0, Lcom/perm/kate/NotificationsFragment$3;->this$0:Lcom/perm/kate/NotificationsFragment;

    check-cast p1, Lcom/perm/kate/api/Notifications;

    iput-object p1, v0, Lcom/perm/kate/NotificationsFragment;->notifications:Lcom/perm/kate/api/Notifications;

    const/4 p1, 0x0

    .line 117
    invoke-virtual {v0, p1}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 118
    iget-object v0, p0, Lcom/perm/kate/NotificationsFragment$3;->this$0:Lcom/perm/kate/NotificationsFragment;

    invoke-static {v0}, Lcom/perm/kate/NotificationsFragment;->access$000(Lcom/perm/kate/NotificationsFragment;)V

    .line 119
    iget-object v0, p0, Lcom/perm/kate/NotificationsFragment$3;->this$0:Lcom/perm/kate/NotificationsFragment;

    iget-object v0, v0, Lcom/perm/kate/NotificationsFragment;->notifications:Lcom/perm/kate/api/Notifications;

    invoke-static {v0}, Lcom/perm/kate/RepliesLogic;->saveCache(Lcom/perm/kate/api/Notifications;)V

    .line 120
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    iget-object v1, p0, Lcom/perm/kate/NotificationsFragment$3;->this$0:Lcom/perm/kate/NotificationsFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/perm/kate/session/Session;->markNotificationsAsViewed(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 121
    iget-object v0, p0, Lcom/perm/kate/NotificationsFragment$3;->this$0:Lcom/perm/kate/NotificationsFragment;

    iget-object v0, v0, Lcom/perm/kate/NotificationsFragment;->notifications:Lcom/perm/kate/api/Notifications;

    iget-object v0, v0, Lcom/perm/kate/api/Notifications;->notifications:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/perm/kate/NotificationsFragment$3;->this$0:Lcom/perm/kate/NotificationsFragment;

    invoke-static {v0, p1}, Lcom/perm/kate/NotificationsFragment;->access$102(Lcom/perm/kate/NotificationsFragment;I)I

    goto :goto_0

    .line 124
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/NotificationsFragment$3;->this$0:Lcom/perm/kate/NotificationsFragment;

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/perm/kate/NotificationsFragment;->access$102(Lcom/perm/kate/NotificationsFragment;I)I

    :goto_0
    return-void
.end method
