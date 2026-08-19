.class Lcom/perm/kate/NotificationsFragment$2;
.super Ljava/lang/Thread;
.source "NotificationsFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NotificationsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/NotificationsFragment;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/perm/kate/NotificationsFragment$2;->this$0:Lcom/perm/kate/NotificationsFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/perm/kate/NotificationsFragment$2;->this$0:Lcom/perm/kate/NotificationsFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 102
    iget-object v0, p0, Lcom/perm/kate/NotificationsFragment$2;->this$0:Lcom/perm/kate/NotificationsFragment;

    invoke-virtual {v0}, Lcom/perm/kate/NotificationsFragment;->Refresh()V

    return-void
.end method
