.class Lcom/perm/kate/FriendsFragment$11;
.super Ljava/lang/Object;
.source "FriendsFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/FriendsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FriendsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/FriendsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/FriendsFragment;

    .prologue
    .line 551
    iput-object p1, p0, Lcom/perm/kate/FriendsFragment$11;->this$0:Lcom/perm/kate/FriendsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisible"    # I
    .param p3, "visibleCount"    # I
    .param p4, "totalCount"    # I

    .prologue
    .line 554
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 557
    iget-object v0, p0, Lcom/perm/kate/FriendsFragment$11;->this$0:Lcom/perm/kate/FriendsFragment;

    iget-object v0, v0, Lcom/perm/kate/FriendsFragment;->pauser:Lcom/perm/utils/ScrollPauser;

    invoke-virtual {v0, p2}, Lcom/perm/utils/ScrollPauser;->scrollStateChanged(I)V

    .line 558
    return-void
.end method
