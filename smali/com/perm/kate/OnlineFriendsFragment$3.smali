.class Lcom/perm/kate/OnlineFriendsFragment$3;
.super Ljava/lang/Object;
.source "OnlineFriendsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/OnlineFriendsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/OnlineFriendsFragment;)V
    .locals 0

    .line 119
    iput-object p1, p0, Lcom/perm/kate/OnlineFriendsFragment$3;->this$0:Lcom/perm/kate/OnlineFriendsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 122
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 124
    iget-object p2, p0, Lcom/perm/kate/OnlineFriendsFragment$3;->this$0:Lcom/perm/kate/OnlineFriendsFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/perm/kate/Helper;->ShowProfile(Ljava/lang/String;Landroid/app/Activity;)V

    :cond_0
    return-void
.end method
