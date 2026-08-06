.class Lcom/perm/kate/GroupBannedActivity$3$1;
.super Ljava/lang/Object;
.source "GroupBannedActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/GroupBannedActivity$3;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/GroupBannedActivity$3;

.field final synthetic val$item:Lcom/perm/kate/api/GroupBanItem;

.field final synthetic val$menus:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/perm/kate/GroupBannedActivity$3;Ljava/util/ArrayList;Lcom/perm/kate/api/GroupBanItem;)V
    .locals 0
    .param p1, "this$1"    # Lcom/perm/kate/GroupBannedActivity$3;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/perm/kate/GroupBannedActivity$3$1;->this$1:Lcom/perm/kate/GroupBannedActivity$3;

    iput-object p2, p0, Lcom/perm/kate/GroupBannedActivity$3$1;->val$menus:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/perm/kate/GroupBannedActivity$3$1;->val$item:Lcom/perm/kate/api/GroupBanItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 106
    iget-object v0, p0, Lcom/perm/kate/GroupBannedActivity$3$1;->val$menus:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/MenuItemDetails;

    iget v0, v0, Lcom/perm/kate/MenuItemDetails;->code:I

    packed-switch v0, :pswitch_data_0

    .line 124
    :goto_0
    return-void

    .line 108
    :pswitch_0
    iget-object v0, p0, Lcom/perm/kate/GroupBannedActivity$3$1;->val$item:Lcom/perm/kate/api/GroupBanItem;

    iget-wide v0, v0, Lcom/perm/kate/api/GroupBanItem;->id:J

    iget-object v2, p0, Lcom/perm/kate/GroupBannedActivity$3$1;->this$1:Lcom/perm/kate/GroupBannedActivity$3;

    iget-object v2, v2, Lcom/perm/kate/GroupBannedActivity$3;->this$0:Lcom/perm/kate/GroupBannedActivity;

    invoke-static {v0, v1, v2}, Lcom/perm/kate/Helper;->showGroup(JLandroid/app/Activity;)V

    goto :goto_0

    .line 111
    :pswitch_1
    iget-object v0, p0, Lcom/perm/kate/GroupBannedActivity$3$1;->this$1:Lcom/perm/kate/GroupBannedActivity$3;

    iget-object v0, v0, Lcom/perm/kate/GroupBannedActivity$3;->this$0:Lcom/perm/kate/GroupBannedActivity;

    iget-object v1, p0, Lcom/perm/kate/GroupBannedActivity$3$1;->val$item:Lcom/perm/kate/api/GroupBanItem;

    invoke-static {v0, v1}, Lcom/perm/kate/GroupBannedActivity;->access$400(Lcom/perm/kate/GroupBannedActivity;Lcom/perm/kate/api/GroupBanItem;)V

    .line 112
    iget-object v0, p0, Lcom/perm/kate/GroupBannedActivity$3$1;->val$item:Lcom/perm/kate/api/GroupBanItem;

    iget-wide v0, v0, Lcom/perm/kate/api/GroupBanItem;->id:J

    iget-object v2, p0, Lcom/perm/kate/GroupBannedActivity$3$1;->this$1:Lcom/perm/kate/GroupBannedActivity$3;

    iget-object v2, v2, Lcom/perm/kate/GroupBannedActivity$3;->this$0:Lcom/perm/kate/GroupBannedActivity;

    invoke-static {v0, v1, v2}, Lcom/perm/kate/Helper;->ShowProfile(JLandroid/app/Activity;)V

    goto :goto_0

    .line 115
    :pswitch_2
    iget-object v0, p0, Lcom/perm/kate/GroupBannedActivity$3$1;->this$1:Lcom/perm/kate/GroupBannedActivity$3;

    iget-object v0, v0, Lcom/perm/kate/GroupBannedActivity$3;->this$0:Lcom/perm/kate/GroupBannedActivity;

    iget-object v1, p0, Lcom/perm/kate/GroupBannedActivity$3$1;->val$item:Lcom/perm/kate/api/GroupBanItem;

    invoke-static {v0, v1}, Lcom/perm/kate/GroupBannedActivity;->access$500(Lcom/perm/kate/GroupBannedActivity;Lcom/perm/kate/api/GroupBanItem;)V

    goto :goto_0

    .line 118
    :pswitch_3
    iget-object v0, p0, Lcom/perm/kate/GroupBannedActivity$3$1;->val$item:Lcom/perm/kate/api/GroupBanItem;

    iget-wide v0, v0, Lcom/perm/kate/api/GroupBanItem;->id:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/perm/kate/GroupBannedActivity$3$1;->this$1:Lcom/perm/kate/GroupBannedActivity$3;

    iget-object v0, v0, Lcom/perm/kate/GroupBannedActivity$3;->this$0:Lcom/perm/kate/GroupBannedActivity;

    iget-object v1, p0, Lcom/perm/kate/GroupBannedActivity$3$1;->val$item:Lcom/perm/kate/api/GroupBanItem;

    invoke-static {v0, v1}, Lcom/perm/kate/GroupBannedActivity;->access$400(Lcom/perm/kate/GroupBannedActivity;Lcom/perm/kate/api/GroupBanItem;)V

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/GroupBannedActivity$3$1;->this$1:Lcom/perm/kate/GroupBannedActivity$3;

    iget-object v0, v0, Lcom/perm/kate/GroupBannedActivity$3;->this$0:Lcom/perm/kate/GroupBannedActivity;

    iget-object v1, p0, Lcom/perm/kate/GroupBannedActivity$3$1;->val$item:Lcom/perm/kate/api/GroupBanItem;

    invoke-static {v0, v1}, Lcom/perm/kate/GroupBannedActivity;->access$600(Lcom/perm/kate/GroupBannedActivity;Lcom/perm/kate/api/GroupBanItem;)V

    goto :goto_0

    .line 106
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
