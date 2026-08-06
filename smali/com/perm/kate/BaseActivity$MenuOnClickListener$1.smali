.class Lcom/perm/kate/BaseActivity$MenuOnClickListener$1;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Landroid/support/v7/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/BaseActivity$MenuOnClickListener;->showPopupMenu(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/BaseActivity$MenuOnClickListener;


# direct methods
.method constructor <init>(Lcom/perm/kate/BaseActivity$MenuOnClickListener;)V
    .locals 0
    .param p1, "this$1"    # Lcom/perm/kate/BaseActivity$MenuOnClickListener;

    .prologue
    .line 1125
    iput-object p1, p0, Lcom/perm/kate/BaseActivity$MenuOnClickListener$1;->this$1:Lcom/perm/kate/BaseActivity$MenuOnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 1130
    iget-object v0, p0, Lcom/perm/kate/BaseActivity$MenuOnClickListener$1;->this$1:Lcom/perm/kate/BaseActivity$MenuOnClickListener;

    iget-object v0, v0, Lcom/perm/kate/BaseActivity$MenuOnClickListener;->this$0:Lcom/perm/kate/BaseActivity;

    invoke-virtual {v0, p1}, Lcom/perm/kate/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method
