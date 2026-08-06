.class Lcom/perm/kate/NotificationsFragment$1;
.super Ljava/lang/Thread;
.source "NotificationsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/NotificationsFragment;->readCacheAndRefreshInThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NotificationsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/NotificationsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/NotificationsFragment;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/perm/kate/NotificationsFragment$1;->this$0:Lcom/perm/kate/NotificationsFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/perm/kate/NotificationsFragment$1;->this$0:Lcom/perm/kate/NotificationsFragment;

    invoke-static {}, Lcom/perm/kate/RepliesLogic;->readCache()Lcom/perm/kate/api/Notifications;

    move-result-object v1

    iput-object v1, v0, Lcom/perm/kate/NotificationsFragment;->notifications:Lcom/perm/kate/api/Notifications;

    .line 75
    iget-object v0, p0, Lcom/perm/kate/NotificationsFragment$1;->this$0:Lcom/perm/kate/NotificationsFragment;

    invoke-static {v0}, Lcom/perm/kate/NotificationsFragment;->access$000(Lcom/perm/kate/NotificationsFragment;)V

    .line 77
    iget-object v0, p0, Lcom/perm/kate/NotificationsFragment$1;->this$0:Lcom/perm/kate/NotificationsFragment;

    invoke-virtual {v0}, Lcom/perm/kate/NotificationsFragment;->refreshInThread()V

    .line 78
    return-void
.end method
