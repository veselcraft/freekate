.class public Lcom/perm/kate/ValueLabelAdapter;
.super Lcom/perm/kate/chartview/LabelAdapter;
.source "ValueLabelAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/perm/kate/ValueLabelAdapter$LabelOrientation;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mOrientation:Lcom/perm/kate/ValueLabelAdapter$LabelOrientation;

.field private rightPadding:I

.field private textColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/perm/kate/ValueLabelAdapter$LabelOrientation;)V
    .locals 2

    .line 24
    invoke-direct {p0}, Lcom/perm/kate/chartview/LabelAdapter;-><init>()V

    const-wide/high16 v0, 0x401c000000000000L    # 7.0

    .line 22
    invoke-static {v0, v1}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v0

    iput v0, p0, Lcom/perm/kate/ValueLabelAdapter;->rightPadding:I

    .line 25
    iput-object p1, p0, Lcom/perm/kate/ValueLabelAdapter;->mContext:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lcom/perm/kate/ValueLabelAdapter;->mOrientation:Lcom/perm/kate/ValueLabelAdapter$LabelOrientation;

    .line 27
    invoke-static {p1}, Lcom/perm/kate/theme/ThemeColorsHelper;->getTextColorByTheme(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/perm/kate/ValueLabelAdapter;->textColor:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/perm/kate/ValueLabelAdapter$LabelOrientation;Z)V
    .locals 2

    .line 30
    invoke-direct {p0}, Lcom/perm/kate/chartview/LabelAdapter;-><init>()V

    const-wide/high16 v0, 0x401c000000000000L    # 7.0

    .line 22
    invoke-static {v0, v1}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v0

    iput v0, p0, Lcom/perm/kate/ValueLabelAdapter;->rightPadding:I

    .line 31
    iput-object p1, p0, Lcom/perm/kate/ValueLabelAdapter;->mContext:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/perm/kate/ValueLabelAdapter;->mOrientation:Lcom/perm/kate/ValueLabelAdapter$LabelOrientation;

    .line 33
    iput-boolean p3, p0, Lcom/perm/kate/chartview/LabelAdapter;->mIsVerticalContent:Z

    .line 34
    invoke-static {p1}, Lcom/perm/kate/theme/ThemeColorsHelper;->getTextColorByTheme(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/perm/kate/ValueLabelAdapter;->textColor:I

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .line 39
    iget-boolean v0, p0, Lcom/perm/kate/chartview/LabelAdapter;->mIsVerticalContent:Z

    const/high16 v1, 0x41200000    # 10.0f

    const-string v2, ""

    const/16 v3, 0x15

    const/4 v4, 0x0

    if-nez v0, :cond_8

    if-nez p2, :cond_0

    .line 42
    new-instance p2, Landroid/widget/TextView;

    iget-object p3, p0, Lcom/perm/kate/ValueLabelAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 44
    :cond_0
    move-object p3, p2

    check-cast p3, Landroid/widget/TextView;

    const/16 v0, 0x11

    .line 46
    iget-object v5, p0, Lcom/perm/kate/ValueLabelAdapter;->mOrientation:Lcom/perm/kate/ValueLabelAdapter$LabelOrientation;

    sget-object v6, Lcom/perm/kate/ValueLabelAdapter$LabelOrientation;->VERTICAL:Lcom/perm/kate/ValueLabelAdapter$LabelOrientation;

    if-ne v5, v6, :cond_2

    if-nez p1, :cond_1

    const/16 v3, 0x55

    goto :goto_0

    .line 49
    :cond_1
    invoke-virtual {p0}, Lcom/perm/kate/chartview/LabelAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_5

    const/16 v3, 0x35

    goto :goto_0

    .line 54
    :cond_2
    sget-object v6, Lcom/perm/kate/ValueLabelAdapter$LabelOrientation;->HORIZONTAL:Lcom/perm/kate/ValueLabelAdapter$LabelOrientation;

    if-ne v5, v6, :cond_4

    if-nez p1, :cond_3

    const/16 v3, 0x13

    goto :goto_0

    .line 57
    :cond_3
    invoke-virtual {p0}, Lcom/perm/kate/chartview/LabelAdapter;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne p1, v5, :cond_4

    goto :goto_0

    :cond_4
    const/16 v3, 0x11

    .line 61
    :cond_5
    :goto_0
    iget v0, p0, Lcom/perm/kate/ValueLabelAdapter;->textColor:I

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 62
    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 63
    iget v0, p0, Lcom/perm/kate/ValueLabelAdapter;->rightPadding:I

    invoke-virtual {p3, v4, v4, v0, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 64
    iget-object v0, p0, Lcom/perm/kate/chartview/LabelAdapter;->mItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    .line 65
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_6

    .line 66
    iget-object v0, p0, Lcom/perm/kate/chartview/LabelAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 68
    :cond_6
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 70
    :cond_7
    invoke-virtual {p0, p1}, Lcom/perm/kate/chartview/LabelAdapter;->getItem(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    :goto_1
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setTextSize(F)V

    return-object p2

    .line 76
    :cond_8
    iget-object p2, p0, Lcom/perm/kate/ValueLabelAdapter;->mContext:Landroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    const v0, 0x7f0c0130

    .line 77
    invoke-virtual {p2, v0, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f09037b

    .line 81
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/perm/kate/VerticalTextView;

    .line 85
    iget v0, p0, Lcom/perm/kate/ValueLabelAdapter;->textColor:I

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 86
    invoke-virtual {p3, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 87
    iget v0, p0, Lcom/perm/kate/ValueLabelAdapter;->rightPadding:I

    invoke-virtual {p3, v4, v4, v0, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 88
    iget-object v0, p0, Lcom/perm/kate/chartview/LabelAdapter;->mItems:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_9

    if-lez p1, :cond_9

    .line 89
    invoke-virtual {p0}, Lcom/perm/kate/chartview/LabelAdapter;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_9

    .line 90
    iget-object v0, p0, Lcom/perm/kate/chartview/LabelAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 92
    :cond_9
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    :goto_2
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setTextSize(F)V

    return-object p2
.end method
