.class Lcom/perm/kate/SuggestionsFriendsFragment$3;
.super Lcom/perm/kate/session/Callback;
.source "SuggestionsFriendsFragment.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/SuggestionsFriendsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/SuggestionsFriendsFragment;Landroid/app/Activity;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/perm/kate/SuggestionsFriendsFragment$3;->this$0:Lcom/perm/kate/SuggestionsFriendsFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 1

    .line 106
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 107
    iget-object p1, p0, Lcom/perm/kate/SuggestionsFriendsFragment$3;->this$0:Lcom/perm/kate/SuggestionsFriendsFragment;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 5

    .line 89
    iget-object v0, p0, Lcom/perm/kate/SuggestionsFriendsFragment$3;->this$0:Lcom/perm/kate/SuggestionsFriendsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 91
    :cond_0
    check-cast p1, Ljava/util/ArrayList;

    .line 92
    iget-object v0, p0, Lcom/perm/kate/SuggestionsFriendsFragment$3;->this$0:Lcom/perm/kate/SuggestionsFriendsFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/BaseFragment;->showProgressBar(Z)V

    if-eqz p1, :cond_2

    .line 94
    iget-object v0, p0, Lcom/perm/kate/SuggestionsFriendsFragment$3;->this$0:Lcom/perm/kate/SuggestionsFriendsFragment;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v1}, Lcom/perm/kate/SuggestionsFriendsFragment;->access$302(Lcom/perm/kate/SuggestionsFriendsFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 96
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/User;

    .line 97
    iget-object v1, p0, Lcom/perm/kate/SuggestionsFriendsFragment$3;->this$0:Lcom/perm/kate/SuggestionsFriendsFragment;

    invoke-static {v1}, Lcom/perm/kate/SuggestionsFriendsFragment;->access$400(Lcom/perm/kate/SuggestionsFriendsFragment;)J

    move-result-wide v1

    iget-wide v3, v0, Lcom/perm/kate/api/User;->uid:J

    invoke-static {v1, v2, v3, v4}, Lcom/perm/utils/RecommendationsHelper;->isHiddenUser(JJ)Z

    move-result v1

    if-nez v1, :cond_1

    .line 98
    iget-object v1, p0, Lcom/perm/kate/SuggestionsFriendsFragment$3;->this$0:Lcom/perm/kate/SuggestionsFriendsFragment;

    invoke-static {v1}, Lcom/perm/kate/SuggestionsFriendsFragment;->access$300(Lcom/perm/kate/SuggestionsFriendsFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 101
    :cond_2
    iget-object p1, p0, Lcom/perm/kate/SuggestionsFriendsFragment$3;->this$0:Lcom/perm/kate/SuggestionsFriendsFragment;

    invoke-static {p1}, Lcom/perm/kate/SuggestionsFriendsFragment;->access$300(Lcom/perm/kate/SuggestionsFriendsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/perm/kate/SuggestionsFriendsFragment;->access$500(Lcom/perm/kate/SuggestionsFriendsFragment;Ljava/util/ArrayList;)V

    return-void
.end method
