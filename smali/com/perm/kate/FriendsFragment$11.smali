.class Lcom/perm/kate/FriendsFragment$11;
.super Ljava/lang/Object;
.source "FriendsFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FriendsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/FriendsFragment;)V
    .locals 0

    .line 587
    iput-object p1, p0, Lcom/perm/kate/FriendsFragment$11;->this$0:Lcom/perm/kate/FriendsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    .line 593
    iget-object p1, p0, Lcom/perm/kate/FriendsFragment$11;->this$0:Lcom/perm/kate/FriendsFragment;

    iget-object p1, p1, Lcom/perm/kate/FriendsFragment;->pauser:Lcom/perm/utils/ScrollPauser;

    invoke-virtual {p1, p2}, Lcom/perm/utils/ScrollPauser;->scrollStateChanged(I)V

    return-void
.end method
