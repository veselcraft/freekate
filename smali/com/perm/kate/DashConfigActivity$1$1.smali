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

    .line 75
    iput-object p1, p0, Lcom/perm/kate/DashConfigActivity$1$1;->this$1:Lcom/perm/kate/DashConfigActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    if-eqz p2, :cond_1

    const/4 p1, 0x1

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 82
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/DashConfigActivity$1$1;->this$1:Lcom/perm/kate/DashConfigActivity$1;

    iget-object p1, p1, Lcom/perm/kate/DashConfigActivity$1;->this$0:Lcom/perm/kate/DashConfigActivity;

    invoke-static {p1}, Lcom/perm/kate/DashConfigActivity;->access$100(Lcom/perm/kate/DashConfigActivity;)V

    goto :goto_0

    .line 79
    :cond_1
    iget-object p1, p0, Lcom/perm/kate/DashConfigActivity$1$1;->this$1:Lcom/perm/kate/DashConfigActivity$1;

    iget-object p1, p1, Lcom/perm/kate/DashConfigActivity$1;->this$0:Lcom/perm/kate/DashConfigActivity;

    invoke-static {p1}, Lcom/perm/kate/DashConfigActivity;->access$000(Lcom/perm/kate/DashConfigActivity;)V

    :goto_0
    return-void
.end method
