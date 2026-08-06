.class Lcom/perm/kate/PaintActivity$MenuOnClickListener$1;
.super Ljava/lang/Object;
.source "PaintActivity.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/PaintActivity$MenuOnClickListener;->showPopupMenu(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/PaintActivity$MenuOnClickListener;


# direct methods
.method constructor <init>(Lcom/perm/kate/PaintActivity$MenuOnClickListener;)V
    .locals 0
    .param p1, "this$1"    # Lcom/perm/kate/PaintActivity$MenuOnClickListener;

    .prologue
    .line 488
    iput-object p1, p0, Lcom/perm/kate/PaintActivity$MenuOnClickListener$1;->this$1:Lcom/perm/kate/PaintActivity$MenuOnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 491
    iget-object v0, p0, Lcom/perm/kate/PaintActivity$MenuOnClickListener$1;->this$1:Lcom/perm/kate/PaintActivity$MenuOnClickListener;

    iget-object v0, v0, Lcom/perm/kate/PaintActivity$MenuOnClickListener;->this$0:Lcom/perm/kate/PaintActivity;

    invoke-virtual {v0, p1}, Lcom/perm/kate/PaintActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
