.class Lcom/perm/kate/NewCommentActivity$12;
.super Ljava/lang/Object;
.source "NewCommentActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/NewCommentActivity;->createAttachVideoDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/NewCommentActivity;

.field final synthetic val$menuItems:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/perm/kate/NewCommentActivity;Ljava/util/ArrayList;)V
    .locals 0

    .line 492
    iput-object p1, p0, Lcom/perm/kate/NewCommentActivity$12;->this$0:Lcom/perm/kate/NewCommentActivity;

    iput-object p2, p0, Lcom/perm/kate/NewCommentActivity$12;->val$menuItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 495
    iget-object p1, p0, Lcom/perm/kate/NewCommentActivity$12;->val$menuItems:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/MenuItemDetails;

    iget p1, p1, Lcom/perm/kate/MenuItemDetails;->code:I

    if-eqz p1, :cond_2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 503
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/NewCommentActivity$12;->this$0:Lcom/perm/kate/NewCommentActivity;

    invoke-static {p1, p2}, Lcom/perm/kate/NewCommentActivity;->access$2000(Lcom/perm/kate/NewCommentActivity;Z)V

    goto :goto_0

    .line 500
    :cond_1
    iget-object p1, p0, Lcom/perm/kate/NewCommentActivity$12;->this$0:Lcom/perm/kate/NewCommentActivity;

    invoke-static {p1, p2}, Lcom/perm/kate/NewCommentActivity;->access$1900(Lcom/perm/kate/NewCommentActivity;Z)V

    goto :goto_0

    .line 497
    :cond_2
    iget-object p1, p0, Lcom/perm/kate/NewCommentActivity$12;->this$0:Lcom/perm/kate/NewCommentActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/perm/kate/NewCommentActivity;->access$2000(Lcom/perm/kate/NewCommentActivity;Z)V

    :goto_0
    return-void
.end method
