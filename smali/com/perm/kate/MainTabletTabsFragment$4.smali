.class Lcom/perm/kate/MainTabletTabsFragment$4;
.super Ljava/lang/Object;
.source "MainTabletTabsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/MainTabletTabsFragment;->setupButtons(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MainTabletTabsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/MainTabletTabsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/MainTabletTabsFragment;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/perm/kate/MainTabletTabsFragment$4;->this$0:Lcom/perm/kate/MainTabletTabsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 66
    iget-object v0, p0, Lcom/perm/kate/MainTabletTabsFragment$4;->this$0:Lcom/perm/kate/MainTabletTabsFragment;

    iget-object v0, v0, Lcom/perm/kate/MainTabletTabsFragment;->listener:Lcom/perm/kate/TabListener;

    const-string v1, "FriendsTab"

    invoke-interface {v0, v1}, Lcom/perm/kate/TabListener;->onTabSelected(Ljava/lang/String;)V

    .line 67
    sget-boolean v0, Lcom/perm/kate/KApplication;->isTabletUi:Z

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/perm/kate/MainTabletTabsFragment$4;->this$0:Lcom/perm/kate/MainTabletTabsFragment;

    invoke-virtual {v0, p1}, Lcom/perm/kate/MainTabletTabsFragment;->setActivePaneButton(Landroid/view/View;)V

    .line 69
    :cond_0
    return-void
.end method
