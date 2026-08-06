.class Lcom/perm/kate/NotificationsFragment$4;
.super Ljava/lang/Object;
.source "NotificationsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/NotificationsFragment;->requeryOnUiThread()V
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
    .line 120
    iput-object p1, p0, Lcom/perm/kate/NotificationsFragment$4;->this$0:Lcom/perm/kate/NotificationsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/perm/kate/NotificationsFragment$4;->this$0:Lcom/perm/kate/NotificationsFragment;

    iget-object v0, v0, Lcom/perm/kate/NotificationsFragment;->adapter:Lcom/perm/kate/NotificationsAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/perm/kate/NotificationsFragment$4;->this$0:Lcom/perm/kate/NotificationsFragment;

    iget-object v0, v0, Lcom/perm/kate/NotificationsFragment;->notifications:Lcom/perm/kate/api/Notifications;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/perm/kate/NotificationsFragment$4;->this$0:Lcom/perm/kate/NotificationsFragment;

    iget-object v0, v0, Lcom/perm/kate/NotificationsFragment;->adapter:Lcom/perm/kate/NotificationsAdapter;

    iget-object v1, p0, Lcom/perm/kate/NotificationsFragment$4;->this$0:Lcom/perm/kate/NotificationsFragment;

    iget-object v1, v1, Lcom/perm/kate/NotificationsFragment;->notifications:Lcom/perm/kate/api/Notifications;

    invoke-virtual {v0, v1}, Lcom/perm/kate/NotificationsAdapter;->displayNewData(Lcom/perm/kate/api/Notifications;)V

    .line 125
    :cond_0
    return-void
.end method
