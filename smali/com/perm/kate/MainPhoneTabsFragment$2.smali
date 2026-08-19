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

    .line 80
    iput-object p1, p0, Lcom/perm/kate/MainPhoneTabsFragment$2;->this$0:Lcom/perm/kate/MainPhoneTabsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/perm/kate/MainPhoneTabsFragment$2;->this$0:Lcom/perm/kate/MainPhoneTabsFragment;

    iget-object v0, v0, Lcom/perm/kate/MainPhoneTabsFragment;->listener:Lcom/perm/kate/TabListener;

    if-eqz v0, :cond_0

    const-string v1, "ProfileTab"

    .line 84
    invoke-interface {v0, v1}, Lcom/perm/kate/TabListener;->onTabSelected(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/perm/kate/MainPhoneTabsFragment$2;->this$0:Lcom/perm/kate/MainPhoneTabsFragment;

    invoke-virtual {v0, p1}, Lcom/perm/kate/MainPhoneTabsFragment;->setActivePaneButton(Landroid/view/View;)V

    :cond_0
    return-void
.end method
