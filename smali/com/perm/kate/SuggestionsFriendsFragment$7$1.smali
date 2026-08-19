.class Lcom/perm/kate/SuggestionsFriendsFragment$7$1;
.super Ljava/lang/Object;
.source "SuggestionsFriendsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/perm/kate/SuggestionsFriendsFragment$7;

.field final synthetic val$menuItems:Ljava/util/ArrayList;

.field final synthetic val$profile_id:Ljava/lang/String;

.field final synthetic val$user:Lcom/perm/kate/api/User;


# direct methods
.method constructor <init>(Lcom/perm/kate/SuggestionsFriendsFragment$7;Ljava/util/ArrayList;Ljava/lang/String;Lcom/perm/kate/api/User;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/perm/kate/SuggestionsFriendsFragment$7$1;->this$1:Lcom/perm/kate/SuggestionsFriendsFragment$7;

    iput-object p2, p0, Lcom/perm/kate/SuggestionsFriendsFragment$7$1;->val$menuItems:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/perm/kate/SuggestionsFriendsFragment$7$1;->val$profile_id:Ljava/lang/String;

    iput-object p4, p0, Lcom/perm/kate/SuggestionsFriendsFragment$7$1;->val$user:Lcom/perm/kate/api/User;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 220
    iget-object p1, p0, Lcom/perm/kate/SuggestionsFriendsFragment$7$1;->val$menuItems:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/MenuItemDetails;

    iget p1, p1, Lcom/perm/kate/MenuItemDetails;->code:I

    const/4 p2, 0x1

    if-eq p1, p2, :cond_3

    const/4 p2, 0x2

    if-eq p1, p2, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    const/4 p2, 0x4

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 231
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/SuggestionsFriendsFragment$7$1;->this$1:Lcom/perm/kate/SuggestionsFriendsFragment$7;

    iget-object p1, p1, Lcom/perm/kate/SuggestionsFriendsFragment$7;->this$0:Lcom/perm/kate/SuggestionsFriendsFragment;

    iget-object p2, p0, Lcom/perm/kate/SuggestionsFriendsFragment$7$1;->val$user:Lcom/perm/kate/api/User;

    invoke-static {p1, p2}, Lcom/perm/kate/SuggestionsFriendsFragment;->access$900(Lcom/perm/kate/SuggestionsFriendsFragment;Lcom/perm/kate/api/User;)V

    goto :goto_0

    .line 228
    :cond_1
    iget-object p1, p0, Lcom/perm/kate/SuggestionsFriendsFragment$7$1;->val$profile_id:Ljava/lang/String;

    iget-object p2, p0, Lcom/perm/kate/SuggestionsFriendsFragment$7$1;->this$1:Lcom/perm/kate/SuggestionsFriendsFragment$7;

    iget-object p2, p2, Lcom/perm/kate/SuggestionsFriendsFragment$7;->this$0:Lcom/perm/kate/SuggestionsFriendsFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/perm/kate/Helper;->copyProfileLink(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 225
    :cond_2
    iget-object p1, p0, Lcom/perm/kate/SuggestionsFriendsFragment$7$1;->val$profile_id:Ljava/lang/String;

    iget-object p2, p0, Lcom/perm/kate/SuggestionsFriendsFragment$7$1;->this$1:Lcom/perm/kate/SuggestionsFriendsFragment$7;

    iget-object p2, p2, Lcom/perm/kate/SuggestionsFriendsFragment$7;->this$0:Lcom/perm/kate/SuggestionsFriendsFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/perm/kate/ProfileFragment;->showNewMessage(Ljava/lang/String;Landroid/app/Activity;)V

    goto :goto_0

    .line 222
    :cond_3
    iget-object p1, p0, Lcom/perm/kate/SuggestionsFriendsFragment$7$1;->val$profile_id:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iget-object p2, p0, Lcom/perm/kate/SuggestionsFriendsFragment$7$1;->this$1:Lcom/perm/kate/SuggestionsFriendsFragment$7;

    iget-object p2, p2, Lcom/perm/kate/SuggestionsFriendsFragment$7;->this$0:Lcom/perm/kate/SuggestionsFriendsFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/perm/kate/Helper;->showMessages(Ljava/lang/Long;Landroid/content/Context;)V

    :goto_0
    return-void
.end method
