.class Lcom/perm/kate/GroupsFragment$14;
.super Ljava/lang/Object;
.source "GroupsFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/GroupsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/GroupsFragment;)V
    .locals 0

    .line 486
    iput-object p1, p0, Lcom/perm/kate/GroupsFragment$14;->this$0:Lcom/perm/kate/GroupsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    if-nez p4, :cond_0

    return-void

    .line 496
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/GroupsFragment$14;->this$0:Lcom/perm/kate/GroupsFragment;

    invoke-static {p1}, Lcom/perm/kate/GroupsFragment;->access$600(Lcom/perm/kate/GroupsFragment;)V

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    return-void
.end method
