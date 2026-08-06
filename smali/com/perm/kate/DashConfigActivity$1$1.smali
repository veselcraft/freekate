.class Lcom/perm/kate/DashConfigActivity$1$1;
.super Ljava/lang/Object;
.source "DashConfigActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/DashConfigActivity$1;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/perm/kate/DashConfigActivity$1;


# direct methods
.method constructor <init>(Lcom/perm/kate/DashConfigActivity$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/perm/kate/DashConfigActivity$1;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/perm/kate/DashConfigActivity$1$1;->this$1:Lcom/perm/kate/DashConfigActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 78
    packed-switch p2, :pswitch_data_0

    .line 86
    :goto_0
    return-void

    .line 80
    :pswitch_0
    iget-object v0, p0, Lcom/perm/kate/DashConfigActivity$1$1;->this$1:Lcom/perm/kate/DashConfigActivity$1;

    iget-object v0, v0, Lcom/perm/kate/DashConfigActivity$1;->this$0:Lcom/perm/kate/DashConfigActivity;

    invoke-static {v0}, Lcom/perm/kate/DashConfigActivity;->access$000(Lcom/perm/kate/DashConfigActivity;)V

    goto :goto_0

    .line 83
    :pswitch_1
    iget-object v0, p0, Lcom/perm/kate/DashConfigActivity$1$1;->this$1:Lcom/perm/kate/DashConfigActivity$1;

    iget-object v0, v0, Lcom/perm/kate/DashConfigActivity$1;->this$0:Lcom/perm/kate/DashConfigActivity;

    invoke-static {v0}, Lcom/perm/kate/DashConfigActivity;->access$100(Lcom/perm/kate/DashConfigActivity;)V

    goto :goto_0

    .line 78
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
