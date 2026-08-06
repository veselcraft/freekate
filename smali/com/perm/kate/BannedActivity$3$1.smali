.class Lcom/perm/kate/BannedActivity$3$1;
.super Ljava/lang/Object;
.source "BannedActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/BannedActivity$3;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/BannedActivity$3;

.field final synthetic val$item:Lcom/perm/kate/BannedAdapter$BannItem;

.field final synthetic val$menus:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/perm/kate/BannedActivity$3;Ljava/util/ArrayList;Lcom/perm/kate/BannedAdapter$BannItem;)V
    .locals 0
    .param p1, "this$1"    # Lcom/perm/kate/BannedActivity$3;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/perm/kate/BannedActivity$3$1;->this$1:Lcom/perm/kate/BannedActivity$3;

    iput-object p2, p0, Lcom/perm/kate/BannedActivity$3$1;->val$menus:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/perm/kate/BannedActivity$3$1;->val$item:Lcom/perm/kate/BannedAdapter$BannItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 111
    iget-object v0, p0, Lcom/perm/kate/BannedActivity$3$1;->val$menus:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/MenuItemDetails;

    iget v0, v0, Lcom/perm/kate/MenuItemDetails;->code:I

    packed-switch v0, :pswitch_data_0

    .line 122
    :goto_0
    return-void

    .line 113
    :pswitch_0
    iget-object v0, p0, Lcom/perm/kate/BannedActivity$3$1;->val$item:Lcom/perm/kate/BannedAdapter$BannItem;

    iget-wide v0, v0, Lcom/perm/kate/BannedAdapter$BannItem;->id:J

    iget-object v2, p0, Lcom/perm/kate/BannedActivity$3$1;->this$1:Lcom/perm/kate/BannedActivity$3;

    iget-object v2, v2, Lcom/perm/kate/BannedActivity$3;->this$0:Lcom/perm/kate/BannedActivity;

    invoke-static {v0, v1, v2}, Lcom/perm/kate/Helper;->showGroup(JLandroid/app/Activity;)V

    goto :goto_0

    .line 116
    :pswitch_1
    iget-object v0, p0, Lcom/perm/kate/BannedActivity$3$1;->val$item:Lcom/perm/kate/BannedAdapter$BannItem;

    iget-wide v0, v0, Lcom/perm/kate/BannedAdapter$BannItem;->id:J

    iget-object v2, p0, Lcom/perm/kate/BannedActivity$3$1;->this$1:Lcom/perm/kate/BannedActivity$3;

    iget-object v2, v2, Lcom/perm/kate/BannedActivity$3;->this$0:Lcom/perm/kate/BannedActivity;

    invoke-static {v0, v1, v2}, Lcom/perm/kate/Helper;->ShowProfile(JLandroid/app/Activity;)V

    goto :goto_0

    .line 119
    :pswitch_2
    iget-object v0, p0, Lcom/perm/kate/BannedActivity$3$1;->this$1:Lcom/perm/kate/BannedActivity$3;

    iget-object v0, v0, Lcom/perm/kate/BannedActivity$3;->this$0:Lcom/perm/kate/BannedActivity;

    iget-object v1, p0, Lcom/perm/kate/BannedActivity$3$1;->val$item:Lcom/perm/kate/BannedAdapter$BannItem;

    invoke-static {v0, v1}, Lcom/perm/kate/BannedActivity;->access$400(Lcom/perm/kate/BannedActivity;Lcom/perm/kate/BannedAdapter$BannItem;)V

    goto :goto_0

    .line 111
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
