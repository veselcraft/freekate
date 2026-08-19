.class Lcom/perm/kate/OnlineFriendsFragment$5;
.super Ljava/lang/Object;
.source "OnlineFriendsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/OnlineFriendsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/OnlineFriendsFragment;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/perm/kate/OnlineFriendsFragment$5;->this$0:Lcom/perm/kate/OnlineFriendsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 174
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 176
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f029f

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f0232

    const/4 v4, 0x2

    invoke-direct {v1, v2, v4}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f01db

    const/4 v4, 0x3

    invoke-direct {v1, v2, v4}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    sget-object v1, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v1}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    .line 180
    iget-object v4, p0, Lcom/perm/kate/OnlineFriendsFragment$5;->this$0:Lcom/perm/kate/OnlineFriendsFragment;

    iget-wide v4, v4, Lcom/perm/kate/OnlineFriendsFragment;->user_id:J

    cmp-long v6, v4, v1

    if-nez v6, :cond_0

    .line 181
    new-instance v1, Lcom/perm/kate/MenuItemDetails;

    const v2, 0x7f0f01e3

    const/4 v4, 0x4

    invoke-direct {v1, v2, v4}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    :cond_0
    new-instance v1, Landroidx/appcompat/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/perm/kate/OnlineFriendsFragment$5;->this$0:Lcom/perm/kate/OnlineFriendsFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/perm/kate/Helper;->getBaseActivity(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 184
    invoke-static {v0}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v2

    new-instance v4, Lcom/perm/kate/OnlineFriendsFragment$5$1;

    invoke-direct {v4, p0, v0, p1}, Lcom/perm/kate/OnlineFriendsFragment$5$1;-><init>(Lcom/perm/kate/OnlineFriendsFragment$5;Ljava/util/ArrayList;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 204
    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    .line 205
    invoke-virtual {p1, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 206
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method
