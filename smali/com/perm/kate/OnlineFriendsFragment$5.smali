.class Lcom/perm/kate/OnlineFriendsFragment$5;
.super Ljava/lang/Object;
.source "OnlineFriendsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/OnlineFriendsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/OnlineFriendsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/OnlineFriendsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/OnlineFriendsFragment;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/perm/kate/OnlineFriendsFragment$5;->this$0:Lcom/perm/kate/OnlineFriendsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v9, 0x1

    .line 172
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 173
    .local v4, "profile_id":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 174
    .local v1, "menuItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/MenuItemDetails;>;"
    new-instance v6, Lcom/perm/kate/MenuItemDetails;

    const v7, 0x7f070245

    invoke-direct {v6, v7, v9}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    new-instance v6, Lcom/perm/kate/MenuItemDetails;

    const v7, 0x7f0701d6

    const/4 v8, 0x2

    invoke-direct {v6, v7, v8}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    new-instance v6, Lcom/perm/kate/MenuItemDetails;

    const v7, 0x7f070177

    const/4 v8, 0x3

    invoke-direct {v6, v7, v8}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    sget-object v6, Lcom/perm/kate/KApplication;->session:Lcom/perm/kate/session/Session;

    invoke-virtual {v6}, Lcom/perm/kate/session/Session;->getMid()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 178
    .local v2, "me_id":J
    iget-object v6, p0, Lcom/perm/kate/OnlineFriendsFragment$5;->this$0:Lcom/perm/kate/OnlineFriendsFragment;

    iget-wide v6, v6, Lcom/perm/kate/OnlineFriendsFragment;->user_id:J

    cmp-long v6, v6, v2

    if-nez v6, :cond_0

    .line 179
    new-instance v6, Lcom/perm/kate/MenuItemDetails;

    const v7, 0x7f070184

    const/4 v8, 0x4

    invoke-direct {v6, v7, v8}, Lcom/perm/kate/MenuItemDetails;-><init>(II)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 181
    :cond_0
    new-instance v6, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/perm/kate/OnlineFriendsFragment$5;->this$0:Lcom/perm/kate/OnlineFriendsFragment;

    invoke-virtual {v7}, Lcom/perm/kate/OnlineFriendsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-static {v7}, Lcom/perm/kate/Helper;->getBaseActivity(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 182
    invoke-static {v1}, Lcom/perm/kate/MenuItemDetails;->toArray(Ljava/util/ArrayList;)[Ljava/lang/CharSequence;

    move-result-object v7

    new-instance v8, Lcom/perm/kate/OnlineFriendsFragment$5$1;

    invoke-direct {v8, p0, v1, v4}, Lcom/perm/kate/OnlineFriendsFragment$5$1;-><init>(Lcom/perm/kate/OnlineFriendsFragment$5;Ljava/util/ArrayList;Ljava/lang/String;)V

    invoke-virtual {v6, v7, v8}, Landroid/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v5

    .line 202
    .local v5, "winAlert":Landroid/support/v7/app/AlertDialog$Builder;
    invoke-virtual {v5}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 203
    .local v0, "dialog":Landroid/support/v7/app/AlertDialog;
    invoke-virtual {v0, v9}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 204
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 205
    return-void
.end method
