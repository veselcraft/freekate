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

    .line 342
    iput-object p1, p0, Lcom/perm/kate/SearchParamsActivity$6;->this$0:Lcom/perm/kate/SearchParamsActivity;

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

    .line 345
    iget-object p1, p0, Lcom/perm/kate/SearchParamsActivity$6;->this$0:Lcom/perm/kate/SearchParamsActivity;

    invoke-static {p1}, Lcom/perm/kate/SearchParamsActivity;->access$800(Lcom/perm/kate/SearchParamsActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/perm/kate/SearchParamsActivity;->access$702(Ljava/lang/String;)Ljava/lang/String;

    .line 347
    iget-object p1, p0, Lcom/perm/kate/SearchParamsActivity$6;->this$0:Lcom/perm/kate/SearchParamsActivity;

    invoke-static {p1}, Lcom/perm/kate/SearchParamsActivity;->access$800(Lcom/perm/kate/SearchParamsActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/perm/kate/SearchParamsActivity$6;->this$0:Lcom/perm/kate/SearchParamsActivity;

    invoke-static {p1}, Lcom/perm/kate/SearchParamsActivity;->access$800(Lcom/perm/kate/SearchParamsActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    instance-of p1, p1, Lcom/perm/kate/CitySpinnerAdapter;

    if-eqz p1, :cond_0

    .line 348
    iget-object p1, p0, Lcom/perm/kate/SearchParamsActivity$6;->this$0:Lcom/perm/kate/SearchParamsActivity;

    long-to-int p2, p4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/perm/kate/SearchParamsActivity;->access$902(Lcom/perm/kate/SearchParamsActivity;Ljava/lang/Integer;)Ljava/lang/Integer;

    goto :goto_0

    .line 351
    :cond_0
    iget-object p1, p0, Lcom/perm/kate/SearchParamsActivity$6;->this$0:Lcom/perm/kate/SearchParamsActivity;

    invoke-static {p1}, Lcom/perm/kate/SearchParamsActivity;->access$1000(Lcom/perm/kate/SearchParamsActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/perm/kate/api/City;

    .line 352
    invoke-static {}, Lcom/perm/kate/SearchParamsActivity;->access$700()Ljava/lang/String;

    move-result-object p3

    iget-object p4, p2, Lcom/perm/kate/api/City;->name:Ljava/lang/String;

    invoke-virtual {p4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 353
    iget-object p1, p0, Lcom/perm/kate/SearchParamsActivity$6;->this$0:Lcom/perm/kate/SearchParamsActivity;

    iget-wide p2, p2, Lcom/perm/kate/api/City;->cid:J

    long-to-int p3, p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/perm/kate/SearchParamsActivity;->access$902(Lcom/perm/kate/SearchParamsActivity;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 358
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/perm/kate/SearchParamsActivity$6;->this$0:Lcom/perm/kate/SearchParamsActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/perm/kate/SearchParamsActivity;->access$1102(Lcom/perm/kate/SearchParamsActivity;Z)Z

    .line 361
    iget-object p1, p0, Lcom/perm/kate/SearchParamsActivity$6;->this$0:Lcom/perm/kate/SearchParamsActivity;

    invoke-static {p1}, Lcom/perm/kate/SearchParamsActivity;->access$1200(Lcom/perm/kate/SearchParamsActivity;)V

    .line 363
    iget-object p1, p0, Lcom/perm/kate/SearchParamsActivity$6;->this$0:Lcom/perm/kate/SearchParamsActivity;

    invoke-static {p1}, Lcom/perm/kate/SearchParamsActivity;->access$1300(Lcom/perm/kate/SearchParamsActivity;)V

    return-void
.end method
