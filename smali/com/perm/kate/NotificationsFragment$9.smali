.class Lcom/perm/kate/NotificationsFragment$9;
.super Ljava/lang/Object;
.source "NotificationsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NotificationsFragment;

.field final synthetic val$menus:Ljava/util/ArrayList;

.field final synthetic val$notification:Lcom/perm/kate/api/Notification;


# direct methods
.method constructor <init>(Lcom/perm/kate/NotificationsFragment;Ljava/util/ArrayList;Lcom/perm/kate/api/Notification;)V
    .locals 0

    .line 489
    iput-object p1, p0, Lcom/perm/kate/NotificationsFragment$9;->this$0:Lcom/perm/kate/NotificationsFragment;

    iput-object p2, p0, Lcom/perm/kate/NotificationsFragment$9;->val$menus:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/perm/kate/NotificationsFragment$9;->val$notification:Lcom/perm/kate/api/Notification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 493
    :try_start_0
    iget-object p1, p0, Lcom/perm/kate/NotificationsFragment$9;->val$menus:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/MenuItemDetails;

    iget p1, p1, Lcom/perm/kate/MenuItemDetails;->code:I

    const/4 p2, 0x1

    if-eq p1, p2, :cond_3

    const/4 p2, 0x2

    if-eq p1, p2, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    const/4 p2, 0x4

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 504
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/NotificationsFragment$9;->this$0:Lcom/perm/kate/NotificationsFragment;

    iget-object p2, p0, Lcom/perm/kate/NotificationsFragment$9;->val$notification:Lcom/perm/kate/api/Notification;

    invoke-static {p1, p2}, Lcom/perm/kate/NotificationsFragment;->access$500(Lcom/perm/kate/NotificationsFragment;Lcom/perm/kate/api/Notification;)V

    goto :goto_0

    .line 501
    :cond_1
    iget-object p1, p0, Lcom/perm/kate/NotificationsFragment$9;->this$0:Lcom/perm/kate/NotificationsFragment;

    iget-object p2, p0, Lcom/perm/kate/NotificationsFragment$9;->val$notification:Lcom/perm/kate/api/Notification;

    invoke-static {p1, p2}, Lcom/perm/kate/NotificationsFragment;->access$400(Lcom/perm/kate/NotificationsFragment;Lcom/perm/kate/api/Notification;)V

    goto :goto_0

    .line 498
    :cond_2
    iget-object p1, p0, Lcom/perm/kate/NotificationsFragment$9;->this$0:Lcom/perm/kate/NotificationsFragment;

    iget-object p2, p0, Lcom/perm/kate/NotificationsFragment$9;->val$notification:Lcom/perm/kate/api/Notification;

    invoke-static {p1, p2}, Lcom/perm/kate/NotificationsFragment;->access$300(Lcom/perm/kate/NotificationsFragment;Lcom/perm/kate/api/Notification;)V

    goto :goto_0

    .line 495
    :cond_3
    iget-object p1, p0, Lcom/perm/kate/NotificationsFragment$9;->this$0:Lcom/perm/kate/NotificationsFragment;

    iget-object p2, p0, Lcom/perm/kate/NotificationsFragment$9;->val$notification:Lcom/perm/kate/api/Notification;

    invoke-virtual {p1, p2}, Lcom/perm/kate/NotificationsFragment;->replyNotification(Lcom/perm/kate/api/Notification;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 508
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 509
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "type="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/perm/kate/NotificationsFragment$9;->val$notification:Lcom/perm/kate/api/Notification;

    iget-object v0, v0, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
