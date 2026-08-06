.class Lcom/perm/kate/NotificationsFragment$6;
.super Ljava/lang/Object;
.source "NotificationsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/NotificationsFragment;->displayContextMenu(Lcom/perm/kate/api/Notification;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NotificationsFragment;

.field final synthetic val$menus:Ljava/util/ArrayList;

.field final synthetic val$notification:Lcom/perm/kate/api/Notification;


# direct methods
.method constructor <init>(Lcom/perm/kate/NotificationsFragment;Ljava/util/ArrayList;Lcom/perm/kate/api/Notification;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/NotificationsFragment;

    .prologue
    .line 364
    iput-object p1, p0, Lcom/perm/kate/NotificationsFragment$6;->this$0:Lcom/perm/kate/NotificationsFragment;

    iput-object p2, p0, Lcom/perm/kate/NotificationsFragment$6;->val$menus:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/perm/kate/NotificationsFragment$6;->val$notification:Lcom/perm/kate/api/Notification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 368
    :try_start_0
    iget-object v1, p0, Lcom/perm/kate/NotificationsFragment$6;->val$menus:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/MenuItemDetails;

    iget v1, v1, Lcom/perm/kate/MenuItemDetails;->code:I

    packed-switch v1, :pswitch_data_0

    .line 383
    :goto_0
    return-void

    .line 370
    :pswitch_0
    iget-object v1, p0, Lcom/perm/kate/NotificationsFragment$6;->this$0:Lcom/perm/kate/NotificationsFragment;

    iget-object v2, p0, Lcom/perm/kate/NotificationsFragment$6;->val$notification:Lcom/perm/kate/api/Notification;

    invoke-virtual {v1, v2}, Lcom/perm/kate/NotificationsFragment;->replyNotification(Lcom/perm/kate/api/Notification;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 379
    :catch_0
    move-exception v0

    .line 380
    .local v0, "th":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 381
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/perm/kate/NotificationsFragment$6;->val$notification:Lcom/perm/kate/api/Notification;

    iget-object v2, v2, Lcom/perm/kate/api/Notification;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    .line 373
    .end local v0    # "th":Ljava/lang/Throwable;
    :pswitch_1
    :try_start_1
    iget-object v1, p0, Lcom/perm/kate/NotificationsFragment$6;->this$0:Lcom/perm/kate/NotificationsFragment;

    iget-object v2, p0, Lcom/perm/kate/NotificationsFragment$6;->val$notification:Lcom/perm/kate/api/Notification;

    invoke-static {v1, v2}, Lcom/perm/kate/NotificationsFragment;->access$200(Lcom/perm/kate/NotificationsFragment;Lcom/perm/kate/api/Notification;)V

    goto :goto_0

    .line 376
    :pswitch_2
    iget-object v1, p0, Lcom/perm/kate/NotificationsFragment$6;->this$0:Lcom/perm/kate/NotificationsFragment;

    iget-object v2, p0, Lcom/perm/kate/NotificationsFragment$6;->val$notification:Lcom/perm/kate/api/Notification;

    invoke-static {v1, v2}, Lcom/perm/kate/NotificationsFragment;->access$300(Lcom/perm/kate/NotificationsFragment;Lcom/perm/kate/api/Notification;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 368
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
