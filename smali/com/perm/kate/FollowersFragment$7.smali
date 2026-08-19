.class Lcom/perm/kate/FollowersFragment$7;
.super Ljava/lang/Object;
.source "FollowersFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FollowersFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/FollowersFragment;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/perm/kate/FollowersFragment$7;->this$0:Lcom/perm/kate/FollowersFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1

    .line 192
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 194
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p2

    const-wide/16 p4, 0x0

    cmp-long v0, p2, p4

    if-lez v0, :cond_0

    .line 196
    iget-object p2, p0, Lcom/perm/kate/FollowersFragment$7;->this$0:Lcom/perm/kate/FollowersFragment;

    invoke-virtual {p2, p1}, Lcom/perm/kate/FollowersFragment;->ShowProfile(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    neg-long p1, p2

    .line 198
    iget-object p3, p0, Lcom/perm/kate/FollowersFragment$7;->this$0:Lcom/perm/kate/FollowersFragment;

    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/perm/kate/Helper;->showGroup(JLandroid/app/Activity;)V

    :cond_1
    :goto_0
    return-void
.end method
