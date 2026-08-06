.class public Lcom/perm/kate/CitySpinnerAdapter;
.super Landroid/widget/ArrayAdapter;
.source "CitySpinnerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perm/kate/CitySpinnerAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/perm/kate/api/City;",
        ">;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/City;",
            ">;"
        }
    .end annotation
.end field

.field private final layoutResourceId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/ArrayList;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutResourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/api/City;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p3, "data":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/api/City;>;"
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 22
    iput-object p1, p0, Lcom/perm/kate/CitySpinnerAdapter;->context:Landroid/content/Context;

    .line 23
    iput-object p3, p0, Lcom/perm/kate/CitySpinnerAdapter;->data:Ljava/util/ArrayList;

    .line 24
    iput p2, p0, Lcom/perm/kate/CitySpinnerAdapter;->layoutResourceId:I

    .line 25
    return-void
.end method


# virtual methods
.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 67
    invoke-super {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/City;

    iget-wide v0, v0, Lcom/perm/kate/api/City;->cid:J

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 29
    move-object v4, p2

    .line 30
    .local v4, "row":Landroid/view/View;
    const/4 v1, 0x0

    .line 31
    .local v1, "holder":Lcom/perm/kate/CitySpinnerAdapter$ViewHolder;
    if-nez v4, :cond_2

    .line 32
    iget-object v5, p0, Lcom/perm/kate/CitySpinnerAdapter;->context:Landroid/content/Context;

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 33
    .local v2, "inflater":Landroid/view/LayoutInflater;
    iget v5, p0, Lcom/perm/kate/CitySpinnerAdapter;->layoutResourceId:I

    invoke-virtual {v2, v5, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 34
    new-instance v1, Lcom/perm/kate/CitySpinnerAdapter$ViewHolder;

    .end local v1    # "holder":Lcom/perm/kate/CitySpinnerAdapter$ViewHolder;
    invoke-direct {v1}, Lcom/perm/kate/CitySpinnerAdapter$ViewHolder;-><init>()V

    .line 35
    .restart local v1    # "holder":Lcom/perm/kate/CitySpinnerAdapter$ViewHolder;
    const v5, 0x7f0e00b6

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v1, Lcom/perm/kate/CitySpinnerAdapter$ViewHolder;->title:Landroid/widget/TextView;

    .line 36
    const v5, 0x7f0e00d8

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v1, Lcom/perm/kate/CitySpinnerAdapter$ViewHolder;->region:Landroid/widget/TextView;

    .line 37
    const v5, 0x7f0e00d7

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, v1, Lcom/perm/kate/CitySpinnerAdapter$ViewHolder;->top_empty:Landroid/view/View;

    .line 38
    invoke-virtual {v4, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 42
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    :goto_0
    iget-object v5, p0, Lcom/perm/kate/CitySpinnerAdapter;->data:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/City;

    .line 43
    .local v0, "city":Lcom/perm/kate/api/City;
    iget-object v5, v1, Lcom/perm/kate/CitySpinnerAdapter$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v6, v0, Lcom/perm/kate/api/City;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    const/4 v3, 0x0

    .line 45
    .local v3, "region":Ljava/lang/String;
    iget-object v5, v0, Lcom/perm/kate/api/City;->area:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 46
    iget-object v3, v0, Lcom/perm/kate/api/City;->area:Ljava/lang/String;

    .line 47
    :cond_0
    iget-object v5, v0, Lcom/perm/kate/api/City;->region:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 48
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 49
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 52
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/perm/kate/api/City;->region:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 54
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 55
    iget-object v5, v1, Lcom/perm/kate/CitySpinnerAdapter$ViewHolder;->region:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v5, v1, Lcom/perm/kate/CitySpinnerAdapter$ViewHolder;->region:Landroid/widget/TextView;

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 57
    iget-object v5, v1, Lcom/perm/kate/CitySpinnerAdapter$ViewHolder;->top_empty:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 62
    :goto_2
    return-object v4

    .line 40
    .end local v0    # "city":Lcom/perm/kate/api/City;
    .end local v3    # "region":Ljava/lang/String;
    :cond_2
    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "holder":Lcom/perm/kate/CitySpinnerAdapter$ViewHolder;
    check-cast v1, Lcom/perm/kate/CitySpinnerAdapter$ViewHolder;

    .restart local v1    # "holder":Lcom/perm/kate/CitySpinnerAdapter$ViewHolder;
    goto :goto_0

    .line 51
    .restart local v0    # "city":Lcom/perm/kate/api/City;
    .restart local v3    # "region":Ljava/lang/String;
    :cond_3
    const-string v3, ""

    goto :goto_1

    .line 59
    :cond_4
    iget-object v5, v1, Lcom/perm/kate/CitySpinnerAdapter$ViewHolder;->region:Landroid/widget/TextView;

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 60
    iget-object v5, v1, Lcom/perm/kate/CitySpinnerAdapter$ViewHolder;->top_empty:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method
