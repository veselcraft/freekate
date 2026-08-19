.class Lcom/perm/kate/RepliesTabsFragment$2;
.super Ljava/lang/Object;
.source "RepliesTabsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/RepliesTabsFragment;->setupButtons(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/RepliesTabsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/RepliesTabsFragment;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/perm/kate/RepliesTabsFragment$2;->this$0:Lcom/perm/kate/RepliesTabsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/perm/kate/RepliesTabsFragment$2;->this$0:Lcom/perm/kate/RepliesTabsFragment;

    iget-object v0, v0, Lcom/perm/kate/RepliesTabsFragment;->listener:Lcom/perm/kate/TabListener;

    const-string v1, "Online"

    invoke-interface {v0, v1}, Lcom/perm/kate/TabListener;->onTabSelected(Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/perm/kate/RepliesTabsFragment$2;->this$0:Lcom/perm/kate/RepliesTabsFragment;

    invoke-virtual {v0, p1}, Lcom/perm/kate/RepliesTabsFragment;->setActivePaneButton(Landroid/view/View;)V

    return-void
.end method
