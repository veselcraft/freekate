.class Lcom/perm/kate/PaintActivity$MenuOnClickListener$1;
.super Ljava/lang/Object;
.source "PaintActivity.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# instance fields
.field final synthetic this$1:Lcom/perm/kate/PaintActivity$MenuOnClickListener;


# direct methods
.method constructor <init>(Lcom/perm/kate/PaintActivity$MenuOnClickListener;)V
    .locals 0

    .line 490
    iput-object p1, p0, Lcom/perm/kate/PaintActivity$MenuOnClickListener$1;->this$1:Lcom/perm/kate/PaintActivity$MenuOnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    .line 493
    iget-object v0, p0, Lcom/perm/kate/PaintActivity$MenuOnClickListener$1;->this$1:Lcom/perm/kate/PaintActivity$MenuOnClickListener;

    iget-object v0, v0, Lcom/perm/kate/PaintActivity$MenuOnClickListener;->this$0:Lcom/perm/kate/PaintActivity;

    invoke-virtual {v0, p1}, Lcom/perm/kate/PaintActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
