.class Lcom/perm/kate/BaseActivity$MenuOnClickListener;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/BaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MenuOnClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/BaseActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/BaseActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/BaseActivity;

    .prologue
    .line 1111
    iput-object p1, p0, Lcom/perm/kate/BaseActivity$MenuOnClickListener;->this$0:Lcom/perm/kate/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1115
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity$MenuOnClickListener;->showPopupMenu(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1116
    iget-object v0, p0, Lcom/perm/kate/BaseActivity$MenuOnClickListener;->this$0:Lcom/perm/kate/BaseActivity;

    invoke-virtual {v0}, Lcom/perm/kate/BaseActivity;->openOptionsMenu()V

    .line 1117
    :cond_0
    return-void
.end method

.method protected showPopupMenu(Landroid/view/View;)Z
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 1121
    :try_start_0
    new-instance v2, Landroid/support/v7/widget/PopupMenu;

    iget-object v5, p0, Lcom/perm/kate/BaseActivity$MenuOnClickListener;->this$0:Lcom/perm/kate/BaseActivity;

    invoke-direct {v2, v5, p1}, Landroid/support/v7/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 1122
    .local v2, "popupMenu":Landroid/support/v7/widget/PopupMenu;
    invoke-virtual {v2}, Landroid/support/v7/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    .line 1123
    .local v1, "menu":Landroid/view/Menu;
    iget-object v5, p0, Lcom/perm/kate/BaseActivity$MenuOnClickListener;->this$0:Lcom/perm/kate/BaseActivity;

    invoke-virtual {v5, v1}, Lcom/perm/kate/BaseActivity;->fillMenuItems(Landroid/view/Menu;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1140
    .end local v1    # "menu":Landroid/view/Menu;
    .end local v2    # "popupMenu":Landroid/support/v7/widget/PopupMenu;
    :goto_0
    return v4

    .line 1125
    .restart local v1    # "menu":Landroid/view/Menu;
    .restart local v2    # "popupMenu":Landroid/support/v7/widget/PopupMenu;
    :cond_0
    new-instance v0, Lcom/perm/kate/BaseActivity$MenuOnClickListener$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/BaseActivity$MenuOnClickListener$1;-><init>(Lcom/perm/kate/BaseActivity$MenuOnClickListener;)V

    .line 1133
    .local v0, "listener":Landroid/support/v7/widget/PopupMenu$OnMenuItemClickListener;
    invoke-virtual {v2, v0}, Landroid/support/v7/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/support/v7/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 1134
    invoke-virtual {v2}, Landroid/support/v7/widget/PopupMenu;->show()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1135
    const/4 v4, 0x1

    goto :goto_0

    .line 1136
    .end local v0    # "listener":Landroid/support/v7/widget/PopupMenu$OnMenuItemClickListener;
    .end local v1    # "menu":Landroid/view/Menu;
    .end local v2    # "popupMenu":Landroid/support/v7/widget/PopupMenu;
    :catch_0
    move-exception v3

    .line 1137
    .local v3, "th":Ljava/lang/Throwable;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1138
    invoke-static {v3}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
