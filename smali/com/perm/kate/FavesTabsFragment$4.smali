.class Lcom/perm/kate/FavesTabsFragment$4;
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

    .line 71
    iput-object p1, p0, Lcom/perm/kate/FavesTabsFragment$4;->this$0:Lcom/perm/kate/FavesTabsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/perm/kate/FavesTabsFragment$4;->this$0:Lcom/perm/kate/FavesTabsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/TabListener;

    const-string v1, "fave_videos"

    .line 75
    invoke-interface {v0, v1}, Lcom/perm/kate/TabListener;->onTabSelected(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/perm/kate/FavesTabsFragment$4;->this$0:Lcom/perm/kate/FavesTabsFragment;

    invoke-virtual {v0, p1}, Lcom/perm/kate/FavesTabsFragment;->setActivePaneButton(Landroid/view/View;)V

    return-void
.end method
