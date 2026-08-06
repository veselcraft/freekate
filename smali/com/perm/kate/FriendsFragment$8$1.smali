.class Lcom/perm/kate/FriendsFragment$8$1;
.super Ljava/lang/Object;
.source "FriendsFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/FriendsFragment$8;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/FriendsFragment$8;

.field final synthetic val$menuItems:Ljava/util/ArrayList;

.field final synthetic val$profile_id:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/perm/kate/FriendsFragment$8;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/perm/kate/FriendsFragment$8;

    .prologue
    .line 384
    iput-object p1, p0, Lcom/perm/kate/FriendsFragment$8$1;->this$1:Lcom/perm/kate/FriendsFragment$8;

    iput-object p2, p0, Lcom/perm/kate/FriendsFragment$8$1;->val$menuItems:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/perm/kate/FriendsFragment$8$1;->val$profile_id:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 387
    iget-object v0, p0, Lcom/perm/kate/FriendsFragment$8$1;->val$menuItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/MenuItemDetails;

    iget v0, v0, Lcom/perm/kate/MenuItemDetails;->code:I

    packed-switch v0, :pswitch_data_0

    .line 401
    :goto_0
    return-void

    .line 389
    :pswitch_0
    iget-object v0, p0, Lcom/perm/kate/FriendsFragment$8$1;->val$profile_id:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/FriendsFragment$8$1;->this$1:Lcom/perm/kate/FriendsFragment$8;

    iget-object v1, v1, Lcom/perm/kate/FriendsFragment$8;->this$0:Lcom/perm/kate/FriendsFragment;

    invoke-virtual {v1}, Lcom/perm/kate/FriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/perm/kate/Helper;->showMessages(Ljava/lang/Long;Landroid/content/Context;)V

    goto :goto_0

    .line 392
    :pswitch_1
    iget-object v0, p0, Lcom/perm/kate/FriendsFragment$8$1;->val$profile_id:Ljava/lang/String;

    iget-object v1, p0, Lcom/perm/kate/FriendsFragment$8$1;->this$1:Lcom/perm/kate/FriendsFragment$8;

    iget-object v1, v1, Lcom/perm/kate/FriendsFragment$8;->this$0:Lcom/perm/kate/FriendsFragment;

    invoke-virtual {v1}, Lcom/perm/kate/FriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/perm/kate/ProfileFragment;->showNewMessage(Ljava/lang/String;Landroid/app/Activity;)V

    goto :goto_0

    .line 395
    :pswitch_2
    iget-object v0, p0, Lcom/perm/kate/FriendsFragment$8$1;->val$profile_id:Ljava/lang/String;

    iget-object v1, p0, Lcom/perm/kate/FriendsFragment$8$1;->this$1:Lcom/perm/kate/FriendsFragment$8;

    iget-object v1, v1, Lcom/perm/kate/FriendsFragment$8;->this$0:Lcom/perm/kate/FriendsFragment;

    invoke-virtual {v1}, Lcom/perm/kate/FriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/perm/kate/Helper;->copyProfileLink(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0

    .line 398
    :pswitch_3
    iget-object v0, p0, Lcom/perm/kate/FriendsFragment$8$1;->this$1:Lcom/perm/kate/FriendsFragment$8;

    iget-object v0, v0, Lcom/perm/kate/FriendsFragment$8;->this$0:Lcom/perm/kate/FriendsFragment;

    iget-object v1, p0, Lcom/perm/kate/FriendsFragment$8$1;->val$profile_id:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/perm/kate/FriendsFragment;->access$900(Lcom/perm/kate/FriendsFragment;J)V

    goto :goto_0

    .line 387
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
