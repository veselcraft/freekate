.class Lcom/perm/kate/AddStickersActivity$4;
.super Ljava/lang/Object;
.source "AddStickersActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/AddStickersActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/AddStickersActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/AddStickersActivity;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/perm/kate/AddStickersActivity$4;->this$0:Lcom/perm/kate/AddStickersActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 151
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 152
    iget-object p2, p0, Lcom/perm/kate/AddStickersActivity$4;->this$0:Lcom/perm/kate/AddStickersActivity;

    invoke-static {p2}, Lcom/perm/kate/AddStickersActivity;->access$200(Lcom/perm/kate/AddStickersActivity;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/io/Serializable;

    const-string p3, "product"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 153
    iget-object p2, p0, Lcom/perm/kate/AddStickersActivity$4;->this$0:Lcom/perm/kate/AddStickersActivity;

    const/4 p3, -0x1

    invoke-virtual {p2, p3, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 154
    iget-object p1, p0, Lcom/perm/kate/AddStickersActivity$4;->this$0:Lcom/perm/kate/AddStickersActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
