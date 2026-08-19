.class Lcom/perm/kate/NewCommentActivity$18;
.super Ljava/lang/Object;
.source "NewCommentActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/NewCommentActivity;->createSettingsDialog()Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NewCommentActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/NewCommentActivity;)V
    .locals 0

    .line 681
    iput-object p1, p0, Lcom/perm/kate/NewCommentActivity$18;->this$0:Lcom/perm/kate/NewCommentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 684
    check-cast p1, Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object p1

    .line 685
    iget-object p2, p0, Lcom/perm/kate/NewCommentActivity$18;->this$0:Lcom/perm/kate/NewCommentActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/perm/kate/NewCommentActivity;->access$802(Lcom/perm/kate/NewCommentActivity;Ljava/lang/Long;)Ljava/lang/Long;

    return-void
.end method
