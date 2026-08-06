.class Lcom/perm/kate/BlackListActivity$3$1;
.super Ljava/lang/Object;
.source "BlackListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/BlackListActivity$3;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/BlackListActivity$3;

.field final synthetic val$menus:Ljava/util/ArrayList;

.field final synthetic val$uid:J


# direct methods
.method constructor <init>(Lcom/perm/kate/BlackListActivity$3;Ljava/util/ArrayList;J)V
    .locals 1
    .param p1, "this$1"    # Lcom/perm/kate/BlackListActivity$3;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/perm/kate/BlackListActivity$3$1;->this$1:Lcom/perm/kate/BlackListActivity$3;

    iput-object p2, p0, Lcom/perm/kate/BlackListActivity$3$1;->val$menus:Ljava/util/ArrayList;

    iput-wide p3, p0, Lcom/perm/kate/BlackListActivity$3$1;->val$uid:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 97
    iget-object v0, p0, Lcom/perm/kate/BlackListActivity$3$1;->val$menus:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/MenuItemDetails;

    iget v0, v0, Lcom/perm/kate/MenuItemDetails;->code:I

    packed-switch v0, :pswitch_data_0

    .line 105
    :goto_0
    return-void

    .line 99
    :pswitch_0
    iget-wide v0, p0, Lcom/perm/kate/BlackListActivity$3$1;->val$uid:J

    iget-object v2, p0, Lcom/perm/kate/BlackListActivity$3$1;->this$1:Lcom/perm/kate/BlackListActivity$3;

    iget-object v2, v2, Lcom/perm/kate/BlackListActivity$3;->this$0:Lcom/perm/kate/BlackListActivity;

    invoke-static {v0, v1, v2}, Lcom/perm/kate/Helper;->ShowProfile(JLandroid/app/Activity;)V

    goto :goto_0

    .line 102
    :pswitch_1
    iget-object v0, p0, Lcom/perm/kate/BlackListActivity$3$1;->this$1:Lcom/perm/kate/BlackListActivity$3;

    iget-object v0, v0, Lcom/perm/kate/BlackListActivity$3;->this$0:Lcom/perm/kate/BlackListActivity;

    iget-wide v2, p0, Lcom/perm/kate/BlackListActivity$3$1;->val$uid:J

    invoke-static {v0, v2, v3}, Lcom/perm/kate/BlackListActivity;->access$500(Lcom/perm/kate/BlackListActivity;J)V

    goto :goto_0

    .line 97
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
