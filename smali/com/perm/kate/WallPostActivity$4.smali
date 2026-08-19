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

    .line 475
    iput-object p1, p0, Lcom/perm/kate/WallPostActivity$4;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 478
    check-cast p1, Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object p1

    .line 479
    iget-object p2, p0, Lcom/perm/kate/WallPostActivity$4;->this$0:Lcom/perm/kate/WallPostActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result p1

    invoke-static {p2, v0, p1}, Lcom/perm/kate/WallPostActivity;->access$1600(Lcom/perm/kate/WallPostActivity;ZZ)V

    return-void
.end method
