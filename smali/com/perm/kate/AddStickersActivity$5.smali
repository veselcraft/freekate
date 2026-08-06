.class Lcom/perm/kate/AddStickersActivity$5;
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
    .param p1, "this$0"    # Lcom/perm/kate/AddStickersActivity;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/perm/kate/AddStickersActivity$5;->this$0:Lcom/perm/kate/AddStickersActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "i"    # I
    .param p4, "l"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 141
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 142
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "product"

    iget-object v1, p0, Lcom/perm/kate/AddStickersActivity$5;->this$0:Lcom/perm/kate/AddStickersActivity;

    invoke-static {v1}, Lcom/perm/kate/AddStickersActivity;->access$400(Lcom/perm/kate/AddStickersActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/Serializable;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 143
    iget-object v1, p0, Lcom/perm/kate/AddStickersActivity$5;->this$0:Lcom/perm/kate/AddStickersActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/perm/kate/AddStickersActivity;->setResult(ILandroid/content/Intent;)V

    .line 144
    iget-object v1, p0, Lcom/perm/kate/AddStickersActivity$5;->this$0:Lcom/perm/kate/AddStickersActivity;

    invoke-virtual {v1}, Lcom/perm/kate/AddStickersActivity;->finish()V

    .line 145
    return-void
.end method
