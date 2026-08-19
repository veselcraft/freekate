.class Lcom/perm/kate/NotificationsFragment$6;
.super Ljava/lang/Object;
.source "NotificationsFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NotificationsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/NotificationsFragment;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/perm/kate/NotificationsFragment$6;->this$0:Lcom/perm/kate/NotificationsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    if-nez p4, :cond_0

    return-void

    :cond_0
    add-int/2addr p2, p3

    add-int/lit8 p4, p4, -0x2

    const/4 p1, 0x1

    if-lt p2, p4, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_2

    .line 181
    iget-object p2, p0, Lcom/perm/kate/NotificationsFragment$6;->this$0:Lcom/perm/kate/NotificationsFragment;

    invoke-static {p2}, Lcom/perm/kate/NotificationsFragment;->access$100(Lcom/perm/kate/NotificationsFragment;)I

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "NotificationsFragment"

    const-string p3, "Loading more"

    .line 182
    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object p2, p0, Lcom/perm/kate/NotificationsFragment$6;->this$0:Lcom/perm/kate/NotificationsFragment;

    invoke-static {p2, p1}, Lcom/perm/kate/NotificationsFragment;->access$102(Lcom/perm/kate/NotificationsFragment;I)I

    .line 184
    iget-object p2, p0, Lcom/perm/kate/NotificationsFragment$6;->this$0:Lcom/perm/kate/NotificationsFragment;

    invoke-virtual {p2, p1}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    .line 185
    iget-object p1, p0, Lcom/perm/kate/NotificationsFragment$6;->this$0:Lcom/perm/kate/NotificationsFragment;

    invoke-virtual {p1}, Lcom/perm/kate/NotificationsFragment;->loadMore()V

    :cond_2
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method
