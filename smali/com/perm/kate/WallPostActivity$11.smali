.class Lcom/perm/kate/WallPostActivity$11;
.super Ljava/lang/Object;
.source "WallPostActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/WallPostActivity;->createSettingsDialog()Landroid/app/Dialog;
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

    .line 822
    iput-object p1, p0, Lcom/perm/kate/WallPostActivity$11;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .line 825
    check-cast p1, Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object p1

    .line 826
    iget-object p2, p0, Lcom/perm/kate/WallPostActivity$11;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-static {p2}, Lcom/perm/kate/WallPostActivity;->access$500(Lcom/perm/kate/WallPostActivity;)J

    move-result-wide v0

    const/4 p2, 0x0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    .line 827
    iget-object v0, p0, Lcom/perm/kate/WallPostActivity$11;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-static {v0}, Lcom/perm/kate/WallPostActivity;->access$300(Lcom/perm/kate/WallPostActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 828
    iget-object v0, p0, Lcom/perm/kate/WallPostActivity$11;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result p1

    invoke-static {v0, p1}, Lcom/perm/kate/WallPostActivity;->access$802(Lcom/perm/kate/WallPostActivity;Z)Z

    goto :goto_0

    .line 830
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/WallPostActivity$11;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result p2

    invoke-static {v0, p2}, Lcom/perm/kate/WallPostActivity;->access$1302(Lcom/perm/kate/WallPostActivity;Z)Z

    .line 831
    iget-object p2, p0, Lcom/perm/kate/WallPostActivity$11;->this$0:Lcom/perm/kate/WallPostActivity;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result p1

    invoke-static {p2, p1}, Lcom/perm/kate/WallPostActivity;->access$802(Lcom/perm/kate/WallPostActivity;Z)Z

    goto :goto_0

    .line 834
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/WallPostActivity$11;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result p1

    invoke-static {v0, p1}, Lcom/perm/kate/WallPostActivity;->access$1202(Lcom/perm/kate/WallPostActivity;Z)Z

    :goto_0
    return-void
.end method
