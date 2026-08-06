.class Lcom/perm/kate/SearchParamsActivity$5;
.super Ljava/lang/Object;
.source "SearchParamsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/SearchParamsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/SearchParamsActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/SearchParamsActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/SearchParamsActivity;

    .prologue
    .line 320
    iput-object p1, p0, Lcom/perm/kate/SearchParamsActivity$5;->this$0:Lcom/perm/kate/SearchParamsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "pos"    # I
    .param p4, "id"    # J
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
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v1, 0x0

    .line 323
    sget-boolean v0, Lcom/perm/kate/SearchParamsActivity;->countries_loaded:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/perm/kate/SearchParamsActivity;->full_countries_loaded:Z

    if-nez v0, :cond_0

    sget v0, Lcom/perm/kate/SearchParamsActivity;->c2:I

    if-ne p3, v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity$5;->this$0:Lcom/perm/kate/SearchParamsActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/perm/kate/SearchParamsActivity;->access$300(Lcom/perm/kate/SearchParamsActivity;I)V

    .line 331
    :goto_0
    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity$5;->this$0:Lcom/perm/kate/SearchParamsActivity;

    invoke-static {v0}, Lcom/perm/kate/SearchParamsActivity;->access$600(Lcom/perm/kate/SearchParamsActivity;)V

    .line 332
    return-void

    .line 325
    :cond_0
    sget-boolean v0, Lcom/perm/kate/SearchParamsActivity;->countries_loaded:Z

    if-nez v0, :cond_1

    sget v0, Lcom/perm/kate/SearchParamsActivity;->c1:I

    if-ne p3, v0, :cond_1

    .line 326
    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity$5;->this$0:Lcom/perm/kate/SearchParamsActivity;

    invoke-static {v0, v1}, Lcom/perm/kate/SearchParamsActivity;->access$300(Lcom/perm/kate/SearchParamsActivity;I)V

    goto :goto_0

    .line 328
    :cond_1
    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity$5;->this$0:Lcom/perm/kate/SearchParamsActivity;

    invoke-static {v0, v1}, Lcom/perm/kate/SearchParamsActivity;->access$402(Lcom/perm/kate/SearchParamsActivity;Z)Z

    .line 329
    iget-object v0, p0, Lcom/perm/kate/SearchParamsActivity$5;->this$0:Lcom/perm/kate/SearchParamsActivity;

    invoke-static {v0, p3}, Lcom/perm/kate/SearchParamsActivity;->access$500(Lcom/perm/kate/SearchParamsActivity;I)V

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 335
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
