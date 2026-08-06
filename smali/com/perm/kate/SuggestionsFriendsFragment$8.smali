.class Lcom/perm/kate/SuggestionsFriendsFragment$8;
.super Ljava/lang/Object;
.source "SuggestionsFriendsFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/SuggestionsFriendsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/SuggestionsFriendsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/SuggestionsFriendsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/SuggestionsFriendsFragment;

    .prologue
    .line 243
    iput-object p1, p0, Lcom/perm/kate/SuggestionsFriendsFragment$8;->this$0:Lcom/perm/kate/SuggestionsFriendsFragment;

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
    .line 246
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 249
    iget-object v0, p0, Lcom/perm/kate/SuggestionsFriendsFragment$8;->this$0:Lcom/perm/kate/SuggestionsFriendsFragment;

    invoke-static {v0}, Lcom/perm/kate/SuggestionsFriendsFragment;->access$1000(Lcom/perm/kate/SuggestionsFriendsFragment;)Lcom/perm/utils/ScrollPauser;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/perm/utils/ScrollPauser;->scrollStateChanged(I)V

    .line 250
    return-void
.end method
