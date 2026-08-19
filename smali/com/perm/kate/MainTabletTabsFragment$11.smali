.class Lcom/perm/kate/MainTabletTabsFragment$11;
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

    .line 112
    iput-object p1, p0, Lcom/perm/kate/MainTabletTabsFragment$11;->this$0:Lcom/perm/kate/MainTabletTabsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 115
    iget-object p1, p0, Lcom/perm/kate/MainTabletTabsFragment$11;->this$0:Lcom/perm/kate/MainTabletTabsFragment;

    iget-object p1, p1, Lcom/perm/kate/MainTabletTabsFragment;->listener:Lcom/perm/kate/TabListener;

    const-string v0, "StoriesTab"

    invoke-interface {p1, v0}, Lcom/perm/kate/TabListener;->onTabSelected(Ljava/lang/String;)V

    return-void
.end method
