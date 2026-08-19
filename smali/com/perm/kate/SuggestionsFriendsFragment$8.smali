.class Lcom/perm/kate/SuggestionsFriendsFragment$8;
.super Ljava/lang/Object;
.source "SuggestionsFriendsFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/SuggestionsFriendsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/SuggestionsFriendsFragment;)V
    .locals 0

    .line 243
    iput-object p1, p0, Lcom/perm/kate/SuggestionsFriendsFragment$8;->this$0:Lcom/perm/kate/SuggestionsFriendsFragment;

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

    .line 249
    iget-object p1, p0, Lcom/perm/kate/SuggestionsFriendsFragment$8;->this$0:Lcom/perm/kate/SuggestionsFriendsFragment;

    invoke-static {p1}, Lcom/perm/kate/SuggestionsFriendsFragment;->access$1000(Lcom/perm/kate/SuggestionsFriendsFragment;)Lcom/perm/utils/ScrollPauser;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/perm/utils/ScrollPauser;->scrollStateChanged(I)V

    return-void
.end method
