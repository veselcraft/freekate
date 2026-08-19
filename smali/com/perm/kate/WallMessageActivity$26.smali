.class Lcom/perm/kate/WallMessageActivity$26;
.super Ljava/lang/Object;
.source "WallMessageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/WallMessageActivity;->showCloseCommentsDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/WallMessageActivity;

.field final synthetic val$comments_closed:Z


# direct methods
.method constructor <init>(Lcom/perm/kate/WallMessageActivity;Z)V
    .locals 0

    .line 959
    iput-object p1, p0, Lcom/perm/kate/WallMessageActivity$26;->this$0:Lcom/perm/kate/WallMessageActivity;

    iput-boolean p2, p0, Lcom/perm/kate/WallMessageActivity$26;->val$comments_closed:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 962
    check-cast p1, Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroidx/appcompat/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result p1

    .line 963
    iget-boolean p2, p0, Lcom/perm/kate/WallMessageActivity$26;->val$comments_closed:Z

    if-eq p1, p2, :cond_0

    .line 964
    iget-object p2, p0, Lcom/perm/kate/WallMessageActivity$26;->this$0:Lcom/perm/kate/WallMessageActivity;

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p2, p1}, Lcom/perm/kate/WallMessageActivity;->access$1100(Lcom/perm/kate/WallMessageActivity;Z)V

    :cond_0
    return-void
.end method
