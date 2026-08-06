.class Lcom/perm/kate/MainTabletTabsFragment$7;
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
    .line 85
    iput-object p1, p0, Lcom/perm/kate/MainTabletTabsFragment$7;->this$0:Lcom/perm/kate/MainTabletTabsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/perm/kate/MainTabletTabsFragment$7;->this$0:Lcom/perm/kate/MainTabletTabsFragment;

    iget-object v0, v0, Lcom/perm/kate/MainTabletTabsFragment;->listener:Lcom/perm/kate/TabListener;

    const-string v1, "FavesTab"

    invoke-interface {v0, v1}, Lcom/perm/kate/TabListener;->onTabSelected(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/perm/kate/MainTabletTabsFragment$7;->this$0:Lcom/perm/kate/MainTabletTabsFragment;

    invoke-virtual {v0, p1}, Lcom/perm/kate/MainTabletTabsFragment;->setActivePaneButton(Landroid/view/View;)V

    .line 90
    return-void
.end method
