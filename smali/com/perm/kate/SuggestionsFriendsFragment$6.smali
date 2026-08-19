.class Lcom/perm/kate/SuggestionsFriendsFragment$6;
.super Ljava/lang/Object;
.source "SuggestionsFriendsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/SuggestionsFriendsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/SuggestionsFriendsFragment;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/perm/kate/SuggestionsFriendsFragment$6;->this$0:Lcom/perm/kate/SuggestionsFriendsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 190
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/api/User;

    if-eqz p1, :cond_0

    .line 192
    sget-object p2, Lcom/perm/kate/KApplication;->db:Lcom/perm/kate/db/DataHelper;

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Lcom/perm/kate/db/DataHelper;->createOrUpdateUser(Lcom/perm/kate/api/User;Z)V

    .line 193
    iget-wide p1, p1, Lcom/perm/kate/api/User;->uid:J

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/perm/kate/SuggestionsFriendsFragment$6;->this$0:Lcom/perm/kate/SuggestionsFriendsFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/perm/kate/Helper;->ShowProfile(Ljava/lang/String;Landroid/app/Activity;)V

    :cond_0
    return-void
.end method
