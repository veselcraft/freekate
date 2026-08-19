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

    .line 324
    iput-object p1, p0, Lcom/perm/kate/SearchParamsActivity$5;->this$0:Lcom/perm/kate/SearchParamsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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

    .line 327
    sget-boolean p1, Lcom/perm/kate/SearchParamsActivity;->countries_loaded:Z

    if-eqz p1, :cond_0

    sget-boolean p1, Lcom/perm/kate/SearchParamsActivity;->full_countries_loaded:Z

    if-nez p1, :cond_0

    sget p1, Lcom/perm/kate/SearchParamsActivity;->c2:I

    if-ne p3, p1, :cond_0

    .line 328
    iget-object p1, p0, Lcom/perm/kate/SearchParamsActivity$5;->this$0:Lcom/perm/kate/SearchParamsActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/perm/kate/SearchParamsActivity;->access$300(Lcom/perm/kate/SearchParamsActivity;I)V

    goto :goto_0

    .line 329
    :cond_0
    sget-boolean p1, Lcom/perm/kate/SearchParamsActivity;->countries_loaded:Z

    const/4 p2, 0x0

    if-nez p1, :cond_1

    sget p1, Lcom/perm/kate/SearchParamsActivity;->c1:I

    if-ne p3, p1, :cond_1

    .line 330
    iget-object p1, p0, Lcom/perm/kate/SearchParamsActivity$5;->this$0:Lcom/perm/kate/SearchParamsActivity;

    invoke-static {p1, p2}, Lcom/perm/kate/SearchParamsActivity;->access$300(Lcom/perm/kate/SearchParamsActivity;I)V

    goto :goto_0

    .line 332
    :cond_1
    iget-object p1, p0, Lcom/perm/kate/SearchParamsActivity$5;->this$0:Lcom/perm/kate/SearchParamsActivity;

    invoke-static {p1, p2}, Lcom/perm/kate/SearchParamsActivity;->access$402(Lcom/perm/kate/SearchParamsActivity;Z)Z

    .line 333
    iget-object p1, p0, Lcom/perm/kate/SearchParamsActivity$5;->this$0:Lcom/perm/kate/SearchParamsActivity;

    invoke-static {p1, p3}, Lcom/perm/kate/SearchParamsActivity;->access$500(Lcom/perm/kate/SearchParamsActivity;I)V

    .line 335
    :goto_0
    iget-object p1, p0, Lcom/perm/kate/SearchParamsActivity$5;->this$0:Lcom/perm/kate/SearchParamsActivity;

    invoke-static {p1}, Lcom/perm/kate/SearchParamsActivity;->access$600(Lcom/perm/kate/SearchParamsActivity;)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
