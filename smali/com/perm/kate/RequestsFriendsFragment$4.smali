.class Lcom/perm/kate/RequestsFriendsFragment$4;
.super Ljava/lang/Object;
.source "RequestsFriendsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/RequestsFriendsFragment;->displayData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/RequestsFriendsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/RequestsFriendsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/RequestsFriendsFragment;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/perm/kate/RequestsFriendsFragment$4;->this$0:Lcom/perm/kate/RequestsFriendsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 131
    iget-object v0, p0, Lcom/perm/kate/RequestsFriendsFragment$4;->this$0:Lcom/perm/kate/RequestsFriendsFragment;

    new-instance v1, Lcom/perm/kate/FriendsListAdapter;

    iget-object v2, p0, Lcom/perm/kate/RequestsFriendsFragment$4;->this$0:Lcom/perm/kate/RequestsFriendsFragment;

    invoke-static {v2}, Lcom/perm/kate/RequestsFriendsFragment;->access$100(Lcom/perm/kate/RequestsFriendsFragment;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/perm/kate/RequestsFriendsFragment$4;->this$0:Lcom/perm/kate/RequestsFriendsFragment;

    invoke-virtual {v3}, Lcom/perm/kate/RequestsFriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/perm/kate/FriendsListAdapter;-><init>(Ljava/util/ArrayList;Landroid/app/Activity;Z)V

    invoke-static {v0, v1}, Lcom/perm/kate/RequestsFriendsFragment;->access$502(Lcom/perm/kate/RequestsFriendsFragment;Lcom/perm/kate/FriendsListAdapter;)Lcom/perm/kate/FriendsListAdapter;

    .line 132
    iget-object v0, p0, Lcom/perm/kate/RequestsFriendsFragment$4;->this$0:Lcom/perm/kate/RequestsFriendsFragment;

    invoke-static {v0}, Lcom/perm/kate/RequestsFriendsFragment;->access$600(Lcom/perm/kate/RequestsFriendsFragment;)Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/perm/kate/RequestsFriendsFragment$4;->this$0:Lcom/perm/kate/RequestsFriendsFragment;

    invoke-static {v0}, Lcom/perm/kate/RequestsFriendsFragment;->access$600(Lcom/perm/kate/RequestsFriendsFragment;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/RequestsFriendsFragment$4;->this$0:Lcom/perm/kate/RequestsFriendsFragment;

    invoke-static {v1}, Lcom/perm/kate/RequestsFriendsFragment;->access$500(Lcom/perm/kate/RequestsFriendsFragment;)Lcom/perm/kate/FriendsListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 134
    :cond_0
    return-void
.end method
