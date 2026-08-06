.class Lcom/perm/kate/MainPhoneTabsFragment$2;
.super Ljava/lang/Object;
.source "MainPhoneTabsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/MainPhoneTabsFragment;->setupButtons(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/MainPhoneTabsFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/MainPhoneTabsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/MainPhoneTabsFragment;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/perm/kate/MainPhoneTabsFragment$2;->this$0:Lcom/perm/kate/MainPhoneTabsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/perm/kate/MainPhoneTabsFragment$2;->this$0:Lcom/perm/kate/MainPhoneTabsFragment;

    iget-object v0, v0, Lcom/perm/kate/MainPhoneTabsFragment;->listener:Lcom/perm/kate/TabListener;

    const-string v1, "ProfileTab"

    invoke-interface {v0, v1}, Lcom/perm/kate/TabListener;->onTabSelected(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/perm/kate/MainPhoneTabsFragment$2;->this$0:Lcom/perm/kate/MainPhoneTabsFragment;

    invoke-virtual {v0, p1}, Lcom/perm/kate/MainPhoneTabsFragment;->setActivePaneButton(Landroid/view/View;)V

    .line 92
    return-void
.end method
