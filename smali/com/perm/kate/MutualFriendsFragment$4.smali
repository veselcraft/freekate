.class Lcom/perm/kate/MutualFriendsFragment$4;
.super Ljava/lang/Object;
.source "MutualFriendsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MutualFriendsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/MutualFriendsFragment;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/perm/kate/MutualFriendsFragment$4;->this$0:Lcom/perm/kate/MutualFriendsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 92
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 93
    iget-object p2, p0, Lcom/perm/kate/MutualFriendsFragment$4;->this$0:Lcom/perm/kate/MutualFriendsFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/perm/kate/Helper;->ShowProfile(Ljava/lang/String;Landroid/app/Activity;)V

    return-void
.end method
