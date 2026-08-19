.class Lcom/perm/kate/BaseActivity$MenuOnClickListener$1;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;


# instance fields
.field final synthetic this$1:Lcom/perm/kate/BaseActivity$MenuOnClickListener;


# direct methods
.method constructor <init>(Lcom/perm/kate/BaseActivity$MenuOnClickListener;)V
    .locals 0

    .line 1125
    iput-object p1, p0, Lcom/perm/kate/BaseActivity$MenuOnClickListener$1;->this$1:Lcom/perm/kate/BaseActivity$MenuOnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    .line 1130
    iget-object v0, p0, Lcom/perm/kate/BaseActivity$MenuOnClickListener$1;->this$1:Lcom/perm/kate/BaseActivity$MenuOnClickListener;

    iget-object v0, v0, Lcom/perm/kate/BaseActivity$MenuOnClickListener;->this$0:Lcom/perm/kate/BaseActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
