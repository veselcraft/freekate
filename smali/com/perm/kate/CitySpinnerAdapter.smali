.class public Lcom/perm/kate/CitySpinnerAdapter;
.super Landroid/widget/ArrayAdapter;
.source "CitySpinnerAdapter.java"


# instance fields
.field private final context:Landroid/content/Context;

.field private final data:Ljava/util/ArrayList;

.field private final layoutResourceId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 22
    iput-object p1, p0, Lcom/perm/kate/CitySpinnerAdapter;->context:Landroid/content/Context;

    .line 23
    iput-object p3, p0, Lcom/perm/kate/CitySpinnerAdapter;->data:Ljava/util/ArrayList;

    .line 24
    iput p2, p0, Lcom/perm/kate/CitySpinnerAdapter;->layoutResourceId:I

    return-void
.end method


# virtual methods
.method public getItemId(I)J
    .locals 2

    .line 67
    invoke-super {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/api/City;

    iget-wide v0, p1, Lcom/perm/kate/api/City;->cid:J

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 32
    iget-object p2, p0, Lcom/perm/kate/CitySpinnerAdapter;->context:Landroid/content/Context;

    check-cast p2, Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    .line 33
    iget v1, p0, Lcom/perm/kate/CitySpinnerAdapter;->layoutResourceId:I

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 34
    new-instance p3, Lcom/perm/kate/CitySpinnerAdapter$ViewHolder;

    invoke-direct {p3}, Lcom/perm/kate/CitySpinnerAdapter$ViewHolder;-><init>()V

    const v1, 0x7f0903de

    .line 35
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p3, Lcom/perm/kate/CitySpinnerAdapter$ViewHolder;->title:Landroid/widget/TextView;

    const v1, 0x7f0903d4

    .line 36
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p3, Lcom/perm/kate/CitySpinnerAdapter$ViewHolder;->region:Landroid/widget/TextView;

    const v1, 0x7f090341

    .line 37
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p3, Lcom/perm/kate/CitySpinnerAdapter$ViewHolder;->top_empty:Landroid/view/View;

    .line 38
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/perm/kate/CitySpinnerAdapter$ViewHolder;

    .line 42
    :goto_0
    iget-object v1, p0, Lcom/perm/kate/CitySpinnerAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/api/City;

    .line 43
    iget-object v1, p3, Lcom/perm/kate/CitySpinnerAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/perm/kate/api/City;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    .line 45
    iget-object v2, p1, Lcom/perm/kate/api/City;->area:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 46
    iget-object v1, p1, Lcom/perm/kate/api/City;->area:Ljava/lang/String;

    .line 47
    :cond_1
    iget-object v2, p1, Lcom/perm/kate/api/City;->region:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 48
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    const-string v1, ""

    .line 52
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/perm/kate/api/City;->region:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 54
    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/16 v2, 0x8

    if-nez p1, :cond_4

    .line 55
    iget-object p1, p3, Lcom/perm/kate/CitySpinnerAdapter$ViewHolder;->region:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object p1, p3, Lcom/perm/kate/CitySpinnerAdapter$ViewHolder;->region:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 57
    iget-object p1, p3, Lcom/perm/kate/CitySpinnerAdapter$ViewHolder;->top_empty:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 59
    :cond_4
    iget-object p1, p3, Lcom/perm/kate/CitySpinnerAdapter$ViewHolder;->region:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 60
    iget-object p1, p3, Lcom/perm/kate/CitySpinnerAdapter$ViewHolder;->top_empty:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    return-object p2
.end method
