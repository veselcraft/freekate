.class Lcom/perm/kate/NotificationsFragment$3;
.super Lcom/perm/kate/session/Callback;
.source "NotificationsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/NotificationsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NotificationsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/NotificationsFragment;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/NotificationsFragment;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/perm/kate/NotificationsFragment$3;->this$0:Lcom/perm/kate/NotificationsFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 110
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 111
    iget-object v0, p0, Lcom/perm/kate/NotificationsFragment$3;->this$0:Lcom/perm/kate/NotificationsFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/NotificationsFragment;->showProgressBar(Z)V

    .line 112
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/perm/kate/NotificationsFragment$3;->this$0:Lcom/perm/kate/NotificationsFragment;

    check-cast p1, Lcom/perm/kate/api/Notifications;

    .end local p1    # "data":Ljava/lang/Object;
    iput-object p1, v0, Lcom/perm/kate/NotificationsFragment;->notifications:Lcom/perm/kate/api/Notifications;

    .line 102
    iget-object v0, p0, Lcom/perm/kate/NotificationsFragment$3;->this$0:Lcom/perm/kate/NotificationsFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/NotificationsFragment;->showProgressBar(Z)V

    .line 103
    iget-object v0, p0, Lcom/perm/kate/NotificationsFragment$3;->this$0:Lcom/perm/kate/NotificationsFragment;

    invoke-static {v0}, Lcom/perm/kate/NotificationsFragment;->access$000(Lcom/perm/kate/NotificationsFragment;)V

    .line 104
    iget-object v0, p0, Lcom/perm/kate/NotificationsFragment$3;->this$0:Lcom/perm/kate/NotificationsFragment;

    iget-object v0, v0, Lcom/perm/kate/NotificationsFragment;->notifications:Lcom/perm/kate/api/Notifications;

    invoke-static {v0}, Lcom/perm/kate/RepliesLogic;->saveCache(Lcom/perm/kate/api/Notifications;)V

    .line 105
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/perm/kate/NotificationsFragment$3;->this$0:Lcom/perm/kate/NotificationsFragment;

    invoke-virtual {v2}, Lcom/perm/kate/NotificationsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/perm/kate/session/Session;->markNotificationsAsViewed(Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    .line 106
    return-void
.end method
