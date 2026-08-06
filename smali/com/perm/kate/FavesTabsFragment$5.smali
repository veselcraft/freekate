.class Lcom/perm/kate/FavesTabsFragment$5;
.super Ljava/lang/Object;
.source "FavesTabsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/FavesTabsFragment;->setupButtons(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/FavesTabsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/FavesTabsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/FavesTabsFragment;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/perm/kate/FavesTabsFragment$5;->this$0:Lcom/perm/kate/FavesTabsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 71
    iget-object v1, p0, Lcom/perm/kate/FavesTabsFragment$5;->this$0:Lcom/perm/kate/FavesTabsFragment;

    invoke-virtual {v1}, Lcom/perm/kate/FavesTabsFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/TabListener;

    .line 72
    .local v0, "listener":Lcom/perm/kate/TabListener;
    const-string v1, "links"

    invoke-interface {v0, v1}, Lcom/perm/kate/TabListener;->onTabSelected(Ljava/lang/String;)V

    .line 73
    iget-object v1, p0, Lcom/perm/kate/FavesTabsFragment$5;->this$0:Lcom/perm/kate/FavesTabsFragment;

    invoke-virtual {v1, p1}, Lcom/perm/kate/FavesTabsFragment;->setActivePaneButton(Landroid/view/View;)V

    .line 74
    return-void
.end method
