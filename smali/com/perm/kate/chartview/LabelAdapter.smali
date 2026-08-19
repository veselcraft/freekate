.class public abstract Lcom/perm/kate/chartview/LabelAdapter;
.super Landroid/widget/BaseAdapter;
.source "LabelAdapter.java"


# instance fields
.field protected mIsVerticalContent:Z

.field protected mItems:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/perm/kate/chartview/LabelAdapter;->mIsVerticalContent:Z

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/perm/kate/chartview/LabelAdapter;->mItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 19
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 6
    invoke-virtual {p0, p1}, Lcom/perm/kate/chartview/LabelAdapter;->getItem(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getItem(I)Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/perm/kate/chartview/LabelAdapter;->mItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 26
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method setValues(Ljava/util/ArrayList;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/perm/kate/chartview/LabelAdapter;->mItems:Ljava/util/ArrayList;

    return-void
.end method
