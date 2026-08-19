.class Lcom/perm/kate/NotificationsFragment$4;
.super Ljava/lang/Thread;
.source "NotificationsFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NotificationsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/NotificationsFragment;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/perm/kate/NotificationsFragment$4;->this$0:Lcom/perm/kate/NotificationsFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 145
    sget-object v0, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    sget v1, Lcom/perm/kate/NotificationsFragment;->count:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v1, p0, Lcom/perm/kate/NotificationsFragment$4;->this$0:Lcom/perm/kate/NotificationsFragment;

    iget-object v2, v1, Lcom/perm/kate/NotificationsFragment;->notifications:Lcom/perm/kate/api/Notifications;

    iget-object v5, v2, Lcom/perm/kate/api/Notifications;->next_from:Ljava/lang/String;

    iget-object v6, v1, Lcom/perm/kate/NotificationsFragment;->callback_more:Lcom/perm/kate/session/Callback;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/perm/kate/session/Session;->getNotifications(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Integer;Ljava/lang/String;Lcom/perm/kate/session/Callback;Landroid/app/Activity;)V

    return-void
.end method
