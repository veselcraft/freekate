.class Lcom/perm/kate/WallPostActivity$4;
.super Ljava/lang/Object;
.source "WallPostActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/WallPostActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/WallPostActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/WallPostActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/WallPostActivity;

    .prologue
    .line 488
    iput-object p1, p0, Lcom/perm/kate/WallPostActivity$4;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    .line 491
    check-cast p1, Landroid/support/v7/app/AlertDialog;

    .end local p1    # "dialog":Landroid/content/DialogInterface;
    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 492
    .local v0, "lv":Landroid/widget/ListView;
    iget-object v1, p0, Lcom/perm/kate/WallPostActivity$4;->this$0:Lcom/perm/kate/WallPostActivity;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/perm/kate/WallPostActivity;->access$1500(Lcom/perm/kate/WallPostActivity;ZZ)V

    .line 493
    return-void
.end method
