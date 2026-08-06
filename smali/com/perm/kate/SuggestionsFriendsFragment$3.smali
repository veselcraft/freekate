.class Lcom/perm/kate/SuggestionsFriendsFragment$3;
.super Lcom/perm/kate/session/Callback;
.source "SuggestionsFriendsFragment.java"


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
.method constructor <init>(Lcom/perm/kate/SuggestionsFriendsFragment;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/SuggestionsFriendsFragment;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/perm/kate/SuggestionsFriendsFragment$3;->this$0:Lcom/perm/kate/SuggestionsFriendsFragment;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public error(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "ex"    # Ljava/lang/Throwable;

    .prologue
    .line 106
    invoke-super {p0, p1}, Lcom/perm/kate/session/Callback;->error(Ljava/lang/Throwable;)V

    .line 107
    iget-object v0, p0, Lcom/perm/kate/SuggestionsFriendsFragment$3;->this$0:Lcom/perm/kate/SuggestionsFriendsFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/perm/kate/SuggestionsFriendsFragment;->showProgressBar(Z)V

    .line 108
    return-void
.end method

.method public ready(Ljava/lang/Object;)V
    .locals 8
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 89
    iget-object v2, p0, Lcom/perm/kate/SuggestionsFriendsFragment$3;->this$0:Lcom/perm/kate/SuggestionsFriendsFragment;

    invoke-virtual {v2}, Lcom/perm/kate/SuggestionsFriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-nez v2, :cond_0

    .line 102
    :goto_0
    return-void

    :cond_0
    move-object v1, p1

    .line 91
    check-cast v1, Ljava/util/ArrayList;

    .line 92
    .local v1, "users":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/User;>;"
    iget-object v2, p0, Lcom/perm/kate/SuggestionsFriendsFragment$3;->this$0:Lcom/perm/kate/SuggestionsFriendsFragment;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/perm/kate/SuggestionsFriendsFragment;->showProgressBar(Z)V

    .line 93
    if-eqz v1, :cond_2

    .line 94
    iget-object v2, p0, Lcom/perm/kate/SuggestionsFriendsFragment$3;->this$0:Lcom/perm/kate/SuggestionsFriendsFragment;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2, v3}, Lcom/perm/kate/SuggestionsFriendsFragment;->access$302(Lcom/perm/kate/SuggestionsFriendsFragment;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 96
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/User;

    .line 97
    .local v0, "u":Lcom/perm/kate/api/User;
    iget-object v3, p0, Lcom/perm/kate/SuggestionsFriendsFragment$3;->this$0:Lcom/perm/kate/SuggestionsFriendsFragment;

    invoke-static {v3}, Lcom/perm/kate/SuggestionsFriendsFragment;->access$400(Lcom/perm/kate/SuggestionsFriendsFragment;)J

    move-result-wide v4

    iget-wide v6, v0, Lcom/perm/kate/api/User;->uid:J

    invoke-static {v4, v5, v6, v7}, Lcom/perm/utils/RecommendationsHelper;->isHiddenUser(JJ)Z

    move-result v3

    if-nez v3, :cond_1

    .line 98
    iget-object v3, p0, Lcom/perm/kate/SuggestionsFriendsFragment$3;->this$0:Lcom/perm/kate/SuggestionsFriendsFragment;

    invoke-static {v3}, Lcom/perm/kate/SuggestionsFriendsFragment;->access$300(Lcom/perm/kate/SuggestionsFriendsFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 101
    .end local v0    # "u":Lcom/perm/kate/api/User;
    :cond_2
    iget-object v2, p0, Lcom/perm/kate/SuggestionsFriendsFragment$3;->this$0:Lcom/perm/kate/SuggestionsFriendsFragment;

    iget-object v3, p0, Lcom/perm/kate/SuggestionsFriendsFragment$3;->this$0:Lcom/perm/kate/SuggestionsFriendsFragment;

    invoke-static {v3}, Lcom/perm/kate/SuggestionsFriendsFragment;->access$300(Lcom/perm/kate/SuggestionsFriendsFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/perm/kate/SuggestionsFriendsFragment;->access$500(Lcom/perm/kate/SuggestionsFriendsFragment;Ljava/util/ArrayList;)V

    goto :goto_0
.end method
