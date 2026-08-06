.class Lcom/perm/kate/DashboardFragment$18;
.super Ljava/lang/Object;
.source "DashboardFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/DashboardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/DashboardFragment;


# direct methods
.method constructor <init>(Lcom/perm/kate/DashboardFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/DashboardFragment;

    .prologue
    .line 404
    iput-object p1, p0, Lcom/perm/kate/DashboardFragment$18;->this$0:Lcom/perm/kate/DashboardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 407
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/DashboardItem;

    .line 408
    .local v0, "x":Lcom/perm/kate/DashboardItem;
    iget v1, v0, Lcom/perm/kate/DashboardItem;->type:I

    packed-switch v1, :pswitch_data_0

    .line 416
    :goto_0
    return-void

    .line 410
    :pswitch_0
    iget v1, v0, Lcom/perm/kate/DashboardItem;->id:I

    int-to-long v2, v1

    iget-object v1, p0, Lcom/perm/kate/DashboardFragment$18;->this$0:Lcom/perm/kate/DashboardFragment;

    invoke-virtual {v1}, Lcom/perm/kate/DashboardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/perm/kate/Helper;->ShowProfile(JLandroid/app/Activity;)V

    goto :goto_0

    .line 413
    :pswitch_1
    iget v1, v0, Lcom/perm/kate/DashboardItem;->id:I

    int-to-long v2, v1

    iget-object v1, p0, Lcom/perm/kate/DashboardFragment$18;->this$0:Lcom/perm/kate/DashboardFragment;

    invoke-virtual {v1}, Lcom/perm/kate/DashboardFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/perm/kate/Helper;->showGroup(JLandroid/app/Activity;)V

    goto :goto_0

    .line 408
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
