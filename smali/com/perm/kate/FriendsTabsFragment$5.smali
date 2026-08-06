.class Lcom/perm/kate/FriendsTabsFragment$5;
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
    .param p1, "this$0"    # Lcom/perm/kate/FriendsTabsFragment;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/perm/kate/FriendsTabsFragment$5;->this$0:Lcom/perm/kate/FriendsTabsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 76
    iget-object v1, p0, Lcom/perm/kate/FriendsTabsFragment$5;->this$0:Lcom/perm/kate/FriendsTabsFragment;

    invoke-virtual {v1}, Lcom/perm/kate/FriendsTabsFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/TabListener;

    .line 77
    .local v0, "listener":Lcom/perm/kate/TabListener;
    const-string v1, "RequestsOutgoing"

    invoke-interface {v0, v1}, Lcom/perm/kate/TabListener;->onTabSelected(Ljava/lang/String;)V

    .line 78
    iget-object v1, p0, Lcom/perm/kate/FriendsTabsFragment$5;->this$0:Lcom/perm/kate/FriendsTabsFragment;

    invoke-virtual {v1, p1}, Lcom/perm/kate/FriendsTabsFragment;->setActivePaneButton(Landroid/view/View;)V

    .line 79
    return-void
.end method
