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
    .param p1, "this$1"    # Lcom/perm/kate/BirthdaysActivity$1;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/perm/kate/BirthdaysActivity$1$1;->this$1:Lcom/perm/kate/BirthdaysActivity$1;

    iput-object p2, p0, Lcom/perm/kate/BirthdaysActivity$1$1;->val$menuItems:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/perm/kate/BirthdaysActivity$1$1;->val$str_uid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 72
    iget-object v0, p0, Lcom/perm/kate/BirthdaysActivity$1$1;->val$menuItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/MenuItemDetails;

    iget v0, v0, Lcom/perm/kate/MenuItemDetails;->code:I

    packed-switch v0, :pswitch_data_0

    .line 80
    :goto_0
    return-void

    .line 74
    :pswitch_0
    iget-object v0, p0, Lcom/perm/kate/BirthdaysActivity$1$1;->val$str_uid:Ljava/lang/String;

    iget-object v1, p0, Lcom/perm/kate/BirthdaysActivity$1$1;->this$1:Lcom/perm/kate/BirthdaysActivity$1;

    iget-object v1, v1, Lcom/perm/kate/BirthdaysActivity$1;->this$0:Lcom/perm/kate/BirthdaysActivity;

    invoke-static {v0, v1}, Lcom/perm/kate/Helper;->ShowProfile(Ljava/lang/String;Landroid/app/Activity;)V

    goto :goto_0

    .line 77
    :pswitch_1
    iget-object v0, p0, Lcom/perm/kate/BirthdaysActivity$1$1;->val$str_uid:Ljava/lang/String;

    iget-object v1, p0, Lcom/perm/kate/BirthdaysActivity$1$1;->this$1:Lcom/perm/kate/BirthdaysActivity$1;

    iget-object v1, v1, Lcom/perm/kate/BirthdaysActivity$1;->this$0:Lcom/perm/kate/BirthdaysActivity;

    invoke-static {v0, v1}, Lcom/perm/kate/ProfileFragment;->showNewMessage(Ljava/lang/String;Landroid/app/Activity;)V

    goto :goto_0

    .line 72
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
