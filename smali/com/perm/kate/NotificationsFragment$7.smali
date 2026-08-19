.class Lcom/perm/kate/NotificationsFragment$7;
.super Ljava/lang/Object;
.source "NotificationsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NotificationsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/NotificationsFragment;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/perm/kate/NotificationsFragment$7;->this$0:Lcom/perm/kate/NotificationsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 202
    iget-object v0, p0, Lcom/perm/kate/NotificationsFragment$7;->this$0:Lcom/perm/kate/NotificationsFragment;

    iget-object v1, v0, Lcom/perm/kate/NotificationsFragment;->adapter:Lcom/perm/kate/NotificationsAdapter;

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/perm/kate/NotificationsFragment;->notifications:Lcom/perm/kate/api/Notifications;

    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {v1, v0}, Lcom/perm/kate/NotificationsAdapter;->displayNewData(Lcom/perm/kate/api/Notifications;)V

    :cond_0
    return-void
.end method
