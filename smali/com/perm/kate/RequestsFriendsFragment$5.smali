.class Lcom/perm/kate/RequestsFriendsFragment$5;
.super Ljava/lang/Object;
.source "RequestsFriendsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/RequestsFriendsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/RequestsFriendsFragment;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/perm/kate/RequestsFriendsFragment$5;->this$0:Lcom/perm/kate/RequestsFriendsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 147
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 149
    iget-object p2, p0, Lcom/perm/kate/RequestsFriendsFragment$5;->this$0:Lcom/perm/kate/RequestsFriendsFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/perm/kate/Helper;->ShowProfile(Ljava/lang/String;Landroid/app/Activity;)V

    :cond_0
    return-void
.end method
