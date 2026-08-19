.class Lcom/perm/kate/NotificationsFragment$5;
.super Lcom/perm/kate/session/Callback;
.source "NotificationsFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NotificationsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/NotificationsFragment;Landroid/app/Activity;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/perm/kate/NotificationsFragment$5;->this$0:Lcom/perm/kate/NotificationsFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 168
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 169
    iget-object p1, p0, Lcom/perm/kate/NotificationsFragment$5;->this$0:Lcom/perm/kate/NotificationsFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 170
    iget-object p1, p0, Lcom/perm/kate/NotificationsFragment$5;->this$0:Lcom/perm/kate/NotificationsFragment;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/perm/kate/NotificationsFragment;->access$102(Lcom/perm/kate/NotificationsFragment;I)I

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 2

    .line 153
    check-cast p1, Lcom/perm/kate/api/Notifications;

    .line 154
    iget-object v0, p0, Lcom/perm/kate/NotificationsFragment$5;->this$0:Lcom/perm/kate/NotificationsFragment;

    iget-object v0, v0, Lcom/perm/kate/NotificationsFragment;->notifications:Lcom/perm/kate/api/Notifications;

    iget-object v0, v0, Lcom/perm/kate/api/Notifications;->notifications:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/perm/kate/api/Notifications;->notifications:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 155
    iget-object v0, p0, Lcom/perm/kate/NotificationsFragment$5;->this$0:Lcom/perm/kate/NotificationsFragment;

    iget-object v0, v0, Lcom/perm/kate/NotificationsFragment;->notifications:Lcom/perm/kate/api/Notifications;

    iget-object v0, v0, Lcom/perm/kate/api/Notifications;->profiles:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/perm/kate/api/Notifications;->profiles:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 156
    iget-object v0, p0, Lcom/perm/kate/NotificationsFragment$5;->this$0:Lcom/perm/kate/NotificationsFragment;

    iget-object v0, v0, Lcom/perm/kate/NotificationsFragment;->notifications:Lcom/perm/kate/api/Notifications;

    iget-object v0, v0, Lcom/perm/kate/api/Notifications;->groups:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/perm/kate/api/Notifications;->groups:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 157
    iget-object v0, p0, Lcom/perm/kate/NotificationsFragment$5;->this$0:Lcom/perm/kate/NotificationsFragment;

    iget-object v1, v0, Lcom/perm/kate/NotificationsFragment;->notifications:Lcom/perm/kate/api/Notifications;

    iget-object p1, p1, Lcom/perm/kate/api/Notifications;->next_from:Ljava/lang/String;

    iput-object p1, v1, Lcom/perm/kate/api/Notifications;->next_from:Ljava/lang/String;

    const/4 p1, 0x0

    .line 158
    invoke-virtual {v0, p1}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 159
    iget-object v0, p0, Lcom/perm/kate/NotificationsFragment$5;->this$0:Lcom/perm/kate/NotificationsFragment;

    invoke-static {v0}, Lcom/perm/kate/NotificationsFragment;->access$000(Lcom/perm/kate/NotificationsFragment;)V

    .line 160
    iget-object v0, p0, Lcom/perm/kate/NotificationsFragment$5;->this$0:Lcom/perm/kate/NotificationsFragment;

    iget-object v0, v0, Lcom/perm/kate/NotificationsFragment;->notifications:Lcom/perm/kate/api/Notifications;

    iget-object v0, v0, Lcom/perm/kate/api/Notifications;->notifications:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/perm/kate/NotificationsFragment$5;->this$0:Lcom/perm/kate/NotificationsFragment;

    invoke-static {v0, p1}, Lcom/perm/kate/NotificationsFragment;->access$102(Lcom/perm/kate/NotificationsFragment;I)I

    goto :goto_0

    .line 163
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/NotificationsFragment$5;->this$0:Lcom/perm/kate/NotificationsFragment;

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/perm/kate/NotificationsFragment;->access$102(Lcom/perm/kate/NotificationsFragment;I)I

    :goto_0
    return-void
.end method
