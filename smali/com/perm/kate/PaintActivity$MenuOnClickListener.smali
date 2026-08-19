.class Lcom/perm/kate/PaintActivity$MenuOnClickListener;
.super Ljava/lang/Object;
.source "PaintActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

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

    .line 480
    iput-object p1, p0, Lcom/perm/kate/PaintActivity$MenuOnClickListener;->this$0:Lcom/perm/kate/PaintActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private showPopupMenu(Landroid/view/View;)Z
    .locals 2

    .line 487
    :try_start_0
    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/perm/kate/PaintActivity$MenuOnClickListener;->this$0:Lcom/perm/kate/PaintActivity;

    invoke-direct {v0, v1, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 488
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    .line 489
    iget-object v1, p0, Lcom/perm/kate/PaintActivity$MenuOnClickListener;->this$0:Lcom/perm/kate/PaintActivity;

    invoke-static {v1, p1}, Lcom/perm/kate/PaintActivity;->access$400(Lcom/perm/kate/PaintActivity;Landroid/view/Menu;)V

    .line 490
    new-instance p1, Lcom/perm/kate/PaintActivity$MenuOnClickListener$1;

    invoke-direct {p1, p0}, Lcom/perm/kate/PaintActivity$MenuOnClickListener$1;-><init>(Lcom/perm/kate/PaintActivity$MenuOnClickListener;)V

    .line 496
    invoke-virtual {v0, p1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 497
    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 500
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 501
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 483
    invoke-direct {p0, p1}, Lcom/perm/kate/PaintActivity$MenuOnClickListener;->showPopupMenu(Landroid/view/View;)Z

    return-void
.end method
