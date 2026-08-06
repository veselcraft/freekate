.class Lcom/perm/kate/NotificationsFragment$2;
.super Ljava/lang/Thread;
.source "NotificationsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/NotificationsFragment;->refreshInThread()V
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
    .line 83
    iput-object p1, p0, Lcom/perm/kate/NotificationsFragment$2;->this$0:Lcom/perm/kate/NotificationsFragment;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/perm/kate/NotificationsFragment$2;->this$0:Lcom/perm/kate/NotificationsFragment;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/perm/kate/NotificationsFragment;->showProgressBar(Z)V

    .line 87
    iget-object v0, p0, Lcom/perm/kate/NotificationsFragment$2;->this$0:Lcom/perm/kate/NotificationsFragment;

    invoke-virtual {v0}, Lcom/perm/kate/NotificationsFragment;->Refresh()V

    .line 88
    return-void
.end method
