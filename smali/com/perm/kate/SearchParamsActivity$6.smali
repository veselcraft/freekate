.class Lcom/perm/kate/SearchParamsActivity$6;
.super Ljava/lang/Object;
.source "SearchParamsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 338
    iput-object p1, p0, Lcom/perm/kate/SearchParamsActivity$6;->this$0:Lcom/perm/kate/SearchParamsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 341
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/perm/kate/SearchParamsActivity$6;->this$0:Lcom/perm/kate/SearchParamsActivity;

    invoke-static {v1}, Lcom/perm/kate/SearchParamsActivity;->access$800(Lcom/perm/kate/SearchParamsActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/perm/kate/SearchParamsActivity;->access$702(Ljava/lang/String;)Ljava/lang/String;

    .line 343
    iget-object v1, p0, Lcom/perm/kate/SearchParamsActivity$6;->this$0:Lcom/perm/kate/SearchParamsActivity;

    invoke-static {v1}, Lcom/perm/kate/SearchParamsActivity;->access$800(Lcom/perm/kate/SearchParamsActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/perm/kate/SearchParamsActivity$6;->this$0:Lcom/perm/kate/SearchParamsActivity;

    invoke-static {v1}, Lcom/perm/kate/SearchParamsActivity;->access$800(Lcom/perm/kate/SearchParamsActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    instance-of v1, v1, Lcom/perm/kate/CitySpinnerAdapter;

    if-eqz v1, :cond_1

    .line 344
    iget-object v1, p0, Lcom/perm/kate/SearchParamsActivity$6;->this$0:Lcom/perm/kate/SearchParamsActivity;

    long-to-int v2, p4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/perm/kate/SearchParamsActivity;->access$902(Lcom/perm/kate/SearchParamsActivity;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 354
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/perm/kate/SearchParamsActivity$6;->this$0:Lcom/perm/kate/SearchParamsActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/perm/kate/SearchParamsActivity;->access$1102(Lcom/perm/kate/SearchParamsActivity;Z)Z

    .line 355
    return-void

    .line 347
    :cond_1
    iget-object v1, p0, Lcom/perm/kate/SearchParamsActivity$6;->this$0:Lcom/perm/kate/SearchParamsActivity;

    invoke-static {v1}, Lcom/perm/kate/SearchParamsActivity;->access$1000(Lcom/perm/kate/SearchParamsActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/City;

    .line 348
    .local v0, "c":Lcom/perm/kate/api/City;
    invoke-static {}, Lcom/perm/kate/SearchParamsActivity;->access$700()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/perm/kate/api/City;->name:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 349
    iget-object v1, p0, Lcom/perm/kate/SearchParamsActivity$6;->this$0:Lcom/perm/kate/SearchParamsActivity;

    iget-wide v2, v0, Lcom/perm/kate/api/City;->cid:J

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/perm/kate/SearchParamsActivity;->access$902(Lcom/perm/kate/SearchParamsActivity;Ljava/lang/Integer;)Ljava/lang/Integer;

    goto :goto_0
.end method
