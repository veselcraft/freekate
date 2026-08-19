.class Lcom/perm/kate/FriendsTabsFragment$2;
.super Ljava/lang/Object;
.source "FriendsTabsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/FriendsTabsFragment;->setupButtons(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FriendsTabsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/FriendsTabsFragment;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/perm/kate/FriendsTabsFragment$2;->this$0:Lcom/perm/kate/FriendsTabsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/perm/kate/FriendsTabsFragment$2;->this$0:Lcom/perm/kate/FriendsTabsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/TabListener;

    const-string v1, "Online"

    .line 52
    invoke-interface {v0, v1}, Lcom/perm/kate/TabListener;->onTabSelected(Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/perm/kate/FriendsTabsFragment$2;->this$0:Lcom/perm/kate/FriendsTabsFragment;

    invoke-virtual {v0, p1}, Lcom/perm/kate/FriendsTabsFragment;->setActivePaneButton(Landroid/view/View;)V

    return-void
.end method
