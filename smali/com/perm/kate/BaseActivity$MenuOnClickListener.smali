.class Lcom/perm/kate/BaseActivity$MenuOnClickListener;
.super Ljava/lang/Object;
.source "BaseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/BaseActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/BaseActivity;)V
    .locals 0

    .line 1107
    iput-object p1, p0, Lcom/perm/kate/BaseActivity$MenuOnClickListener;->this$0:Lcom/perm/kate/BaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1111
    invoke-virtual {p0, p1}, Lcom/perm/kate/BaseActivity$MenuOnClickListener;->showPopupMenu(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1112
    iget-object p1, p0, Lcom/perm/kate/BaseActivity$MenuOnClickListener;->this$0:Lcom/perm/kate/BaseActivity;

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->openOptionsMenu()V

    :cond_0
    return-void
.end method

.method protected showPopupMenu(Landroid/view/View;)Z
    .locals 3

    const/4 v0, 0x0

    .line 1117
    :try_start_0
    new-instance v1, Landroidx/appcompat/widget/PopupMenu;

    iget-object v2, p0, Lcom/perm/kate/BaseActivity$MenuOnClickListener;->this$0:Lcom/perm/kate/BaseActivity;

    invoke-direct {v1, v2, p1}, Landroidx/appcompat/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 1118
    invoke-virtual {v1}, Landroidx/appcompat/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    .line 1120
    iget-object v2, p0, Lcom/perm/kate/BaseActivity$MenuOnClickListener;->this$0:Lcom/perm/kate/BaseActivity;

    invoke-virtual {v2, p1}, Lcom/perm/kate/BaseActivity;->fillMenuItems(Landroid/view/Menu;)Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    .line 1123
    :cond_0
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result p1

    if-nez p1, :cond_1

    return v0

    .line 1125
    :cond_1
    new-instance p1, Lcom/perm/kate/BaseActivity$MenuOnClickListener$1;

    invoke-direct {p1, p0}, Lcom/perm/kate/BaseActivity$MenuOnClickListener$1;-><init>(Lcom/perm/kate/BaseActivity$MenuOnClickListener;)V

    .line 1133
    invoke-virtual {v1, p1}, Landroidx/appcompat/widget/PopupMenu;->setOnMenuItemClickListener(Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 1134
    invoke-virtual {v1}, Landroidx/appcompat/widget/PopupMenu;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    .line 1137
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1138
    invoke-static {p1}, Lcom/perm/kate/Helper;->reportError(Ljava/lang/Throwable;)V

    return v0
.end method
