.class Lcom/perm/kate/NotificationsFragment$8;
.super Ljava/lang/Object;
.source "NotificationsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NotificationsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/NotificationsFragment;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/perm/kate/NotificationsFragment$8;->this$0:Lcom/perm/kate/NotificationsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 219
    iget-object p1, p0, Lcom/perm/kate/NotificationsFragment$8;->this$0:Lcom/perm/kate/NotificationsFragment;

    iget-object p1, p1, Lcom/perm/kate/NotificationsFragment;->notifications:Lcom/perm/kate/api/Notifications;

    if-nez p1, :cond_0

    return-void

    .line 221
    :cond_0
    iget-object p1, p1, Lcom/perm/kate/api/Notifications;->notifications:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/api/Notification;

    .line 222
    iget-object p2, p0, Lcom/perm/kate/NotificationsFragment$8;->this$0:Lcom/perm/kate/NotificationsFragment;

    invoke-static {p2, p1}, Lcom/perm/kate/NotificationsFragment;->access$200(Lcom/perm/kate/NotificationsFragment;Lcom/perm/kate/api/Notification;)V

    return-void
.end method
