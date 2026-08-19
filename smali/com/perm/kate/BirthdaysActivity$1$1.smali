.class Lcom/perm/kate/BirthdaysActivity$1$1;
.super Ljava/lang/Object;
.source "BirthdaysActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/BirthdaysActivity$1;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/BirthdaysActivity$1;

.field final synthetic val$menuItems:Ljava/util/ArrayList;

.field final synthetic val$str_uid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/perm/kate/BirthdaysActivity$1;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/perm/kate/BirthdaysActivity$1$1;->this$1:Lcom/perm/kate/BirthdaysActivity$1;

    iput-object p2, p0, Lcom/perm/kate/BirthdaysActivity$1$1;->val$menuItems:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/perm/kate/BirthdaysActivity$1$1;->val$str_uid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 72
    iget-object p1, p0, Lcom/perm/kate/BirthdaysActivity$1$1;->val$menuItems:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/MenuItemDetails;

    iget p1, p1, Lcom/perm/kate/MenuItemDetails;->code:I

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 77
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/BirthdaysActivity$1$1;->val$str_uid:Ljava/lang/String;

    iget-object p2, p0, Lcom/perm/kate/BirthdaysActivity$1$1;->this$1:Lcom/perm/kate/BirthdaysActivity$1;

    iget-object p2, p2, Lcom/perm/kate/BirthdaysActivity$1;->this$0:Lcom/perm/kate/BirthdaysActivity;

    invoke-static {p1, p2}, Lcom/perm/kate/ProfileFragment;->showNewMessage(Ljava/lang/String;Landroid/app/Activity;)V

    goto :goto_0

    .line 74
    :cond_1
    iget-object p1, p0, Lcom/perm/kate/BirthdaysActivity$1$1;->val$str_uid:Ljava/lang/String;

    iget-object p2, p0, Lcom/perm/kate/BirthdaysActivity$1$1;->this$1:Lcom/perm/kate/BirthdaysActivity$1;

    iget-object p2, p2, Lcom/perm/kate/BirthdaysActivity$1;->this$0:Lcom/perm/kate/BirthdaysActivity;

    invoke-static {p1, p2}, Lcom/perm/kate/Helper;->ShowProfile(Ljava/lang/String;Landroid/app/Activity;)V

    :goto_0
    return-void
.end method
