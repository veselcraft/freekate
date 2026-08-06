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
    .param p1, "this$0"    # Lcom/perm/kate/WallPostActivity;

    .prologue
    .line 815
    iput-object p1, p0, Lcom/perm/kate/WallPostActivity$11;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "whichButton"    # I

    .prologue
    const/4 v6, 0x0

    .line 818
    check-cast p1, Landroid/support/v7/app/AlertDialog;

    .end local p1    # "dialog":Landroid/content/DialogInterface;
    invoke-virtual {p1}, Landroid/support/v7/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 819
    .local v0, "lv":Landroid/widget/ListView;
    iget-object v1, p0, Lcom/perm/kate/WallPostActivity$11;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-static {v1}, Lcom/perm/kate/WallPostActivity;->access$500(Lcom/perm/kate/WallPostActivity;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    .line 820
    iget-object v1, p0, Lcom/perm/kate/WallPostActivity$11;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-static {v1}, Lcom/perm/kate/WallPostActivity;->access$300(Lcom/perm/kate/WallPostActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 821
    iget-object v1, p0, Lcom/perm/kate/WallPostActivity$11;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/perm/kate/WallPostActivity;->access$802(Lcom/perm/kate/WallPostActivity;Z)Z

    .line 828
    :goto_0
    return-void

    .line 823
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/WallPostActivity$11;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/perm/kate/WallPostActivity;->access$1202(Lcom/perm/kate/WallPostActivity;Z)Z

    .line 824
    iget-object v1, p0, Lcom/perm/kate/WallPostActivity$11;->this$0:Lcom/perm/kate/WallPostActivity;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/perm/kate/WallPostActivity;->access$802(Lcom/perm/kate/WallPostActivity;Z)Z

    goto :goto_0

    .line 827
    :cond_1
    iget-object v1, p0, Lcom/perm/kate/WallPostActivity$11;->this$0:Lcom/perm/kate/WallPostActivity;

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/perm/kate/WallPostActivity;->access$1102(Lcom/perm/kate/WallPostActivity;Z)Z

    goto :goto_0
.end method
