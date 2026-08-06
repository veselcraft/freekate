.class Lcom/perm/kate/NotificationsFragment$5;
.super Ljava/lang/Object;
.source "NotificationsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/NotificationsFragment;
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
    .line 137
    iput-object p1, p0, Lcom/perm/kate/NotificationsFragment$5;->this$0:Lcom/perm/kate/NotificationsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 140
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/perm/kate/NotificationsFragment$5;->this$0:Lcom/perm/kate/NotificationsFragment;

    iget-object v1, v1, Lcom/perm/kate/NotificationsFragment;->notifications:Lcom/perm/kate/api/Notifications;

    if-nez v1, :cond_0

    .line 144
    :goto_0
    return-void

    .line 142
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/NotificationsFragment$5;->this$0:Lcom/perm/kate/NotificationsFragment;

    iget-object v1, v1, Lcom/perm/kate/NotificationsFragment;->notifications:Lcom/perm/kate/api/Notifications;

    iget-object v1, v1, Lcom/perm/kate/api/Notifications;->notifications:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/Notification;

    .line 143
    .local v0, "notification":Lcom/perm/kate/api/Notification;
    iget-object v1, p0, Lcom/perm/kate/NotificationsFragment$5;->this$0:Lcom/perm/kate/NotificationsFragment;

    invoke-static {v1, v0}, Lcom/perm/kate/NotificationsFragment;->access$100(Lcom/perm/kate/NotificationsFragment;Lcom/perm/kate/api/Notification;)V

    goto :goto_0
.end method
