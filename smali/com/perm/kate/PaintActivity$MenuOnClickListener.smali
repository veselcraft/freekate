.class Lcom/perm/kate/PaintActivity$MenuOnClickListener;
.super Ljava/lang/Object;
.source "PaintActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/PaintActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MenuOnClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PaintActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/PaintActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/PaintActivity;

    .prologue
    .line 478
    iput-object p1, p0, Lcom/perm/kate/PaintActivity$MenuOnClickListener;->this$0:Lcom/perm/kate/PaintActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private showPopupMenu(Landroid/view/View;)Z
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 485
    :try_start_0
    new-instance v2, Landroid/widget/PopupMenu;

    iget-object v4, p0, Lcom/perm/kate/PaintActivity$MenuOnClickListener;->this$0:Lcom/perm/kate/PaintActivity;

    invoke-direct {v2, v4, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 486
    .local v2, "popupMenu":Landroid/widget/PopupMenu;
    invoke-virtual {v2}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    .line 487
    .local v1, "menu":Landroid/view/Menu;
    iget-object v4, p0, Lcom/perm/kate/PaintActivity$MenuOnClickListener;->this$0:Lcom/perm/kate/PaintActivity;

    invoke-static {v4, v1}, Lcom/perm/kate/PaintActivity;->access$400(Lcom/perm/kate/PaintActivity;Landroid/view/Menu;)V

    .line 488
    new-instance v0, Lcom/perm/kate/PaintActivity$MenuOnClickListener$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/PaintActivity$MenuOnClickListener$1;-><init>(Lcom/perm/kate/PaintActivity$MenuOnClickListener;)V

    .line 494
    .local v0, "listener":Landroid/widget/PopupMenu$OnMenuItemClickListener;
    invoke-virtual {v2, v0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 495
    invoke-virtual {v2}, Landroid/widget/PopupMenu;->show()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 496
    const/4 v4, 0x1

    .line 501
    .end local v0    # "listener":Landroid/widget/PopupMenu$OnMenuItemClickListener;
    .end local v1    # "menu":Landroid/view/Menu;
    .end local v2    # "popupMenu":Landroid/widget/PopupMenu;
    :goto_0
    return v4

    .line 497
    :catch_0
    move-exception v3

    .line 498
    .local v3, "th":Ljava/lang/Throwable;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 499
    invoke-static {v3}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    .line 501
    const/4 v4, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 481
    invoke-direct {p0, p1}, Lcom/perm/kate/PaintActivity$MenuOnClickListener;->showPopupMenu(Landroid/view/View;)Z

    .line 482
    return-void
.end method
