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
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orientation"    # Lcom/perm/kate/ValueLabelAdapter$LabelOrientation;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/perm/kate/chartview/LabelAdapter;-><init>()V

    .line 22
    const-wide/high16 v0, 0x401c000000000000L    # 7.0

    invoke-static {v0, v1}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v0

    iput v0, p0, Lcom/perm/kate/ValueLabelAdapter;->rightPadding:I

    .line 25
    iput-object p1, p0, Lcom/perm/kate/ValueLabelAdapter;->mContext:Landroid/content/Context;

    .line 26
    iput-object p2, p0, Lcom/perm/kate/ValueLabelAdapter;->mOrientation:Lcom/perm/kate/ValueLabelAdapter$LabelOrientation;

    .line 27
    invoke-static {p1}, Lcom/perm/kate/theme/ThemeColorsHelper;->getTextColorByTheme(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/perm/kate/ValueLabelAdapter;->textColor:I

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/perm/kate/ValueLabelAdapter$LabelOrientation;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orientation"    # Lcom/perm/kate/ValueLabelAdapter$LabelOrientation;
    .param p3, "isVerticalContent"    # Z

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/perm/kate/chartview/LabelAdapter;-><init>()V

    .line 22
    const-wide/high16 v0, 0x401c000000000000L    # 7.0

    invoke-static {v0, v1}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v0

    iput v0, p0, Lcom/perm/kate/ValueLabelAdapter;->rightPadding:I

    .line 31
    iput-object p1, p0, Lcom/perm/kate/ValueLabelAdapter;->mContext:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/perm/kate/ValueLabelAdapter;->mOrientation:Lcom/perm/kate/ValueLabelAdapter$LabelOrientation;

    .line 33
    iput-boolean p3, p0, Lcom/perm/kate/ValueLabelAdapter;->mIsVerticalContent:Z

    .line 34
    invoke-static {p1}, Lcom/perm/kate/theme/ThemeColorsHelper;->getTextColorByTheme(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/perm/kate/ValueLabelAdapter;->textColor:I

    .line 35
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/high16 v8, 0x41200000    # 10.0f

    const/4 v7, 0x0

    .line 39
    iget-boolean v5, p0, Lcom/perm/kate/ValueLabelAdapter;->mIsVerticalContent:Z

    if-nez v5, :cond_8

    .line 41
    if-nez p2, :cond_0

    .line 42
    new-instance p2, Landroid/widget/TextView;

    .end local p2    # "convertView":Landroid/view/View;
    iget-object v5, p0, Lcom/perm/kate/ValueLabelAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .restart local p2    # "convertView":Landroid/view/View;
    :cond_0
    move-object v2, p2

    .line 44
    check-cast v2, Landroid/widget/TextView;

    .line 45
    .local v2, "labelTextView":Landroid/widget/TextView;
    const/16 v0, 0x11

    .line 46
    .local v0, "gravity":I
    iget-object v5, p0, Lcom/perm/kate/ValueLabelAdapter;->mOrientation:Lcom/perm/kate/ValueLabelAdapter$LabelOrientation;

    sget-object v6, Lcom/perm/kate/ValueLabelAdapter$LabelOrientation;->VERTICAL:Lcom/perm/kate/ValueLabelAdapter$LabelOrientation;

    if-ne v5, v6, :cond_4

    .line 47
    if-nez p1, :cond_2

    .line 48
    const/16 v0, 0x55

    .line 61
    :cond_1
    :goto_0
    iget v5, p0, Lcom/perm/kate/ValueLabelAdapter;->textColor:I

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 62
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 63
    iget v5, p0, Lcom/perm/kate/ValueLabelAdapter;->rightPadding:I

    invoke-virtual {v2, v7, v7, v5, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 64
    iget-object v5, p0, Lcom/perm/kate/ValueLabelAdapter;->mItems:Ljava/util/ArrayList;

    if-eqz v5, :cond_7

    .line 65
    iget-object v5, p0, Lcom/perm/kate/ValueLabelAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge p1, v5, :cond_6

    .line 66
    iget-object v5, p0, Lcom/perm/kate/ValueLabelAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    :goto_1
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextSize(F)V

    move-object v4, p2

    .line 94
    .end local v2    # "labelTextView":Landroid/widget/TextView;
    :goto_2
    return-object v4

    .line 49
    .restart local v2    # "labelTextView":Landroid/widget/TextView;
    :cond_2
    invoke-virtual {p0}, Lcom/perm/kate/ValueLabelAdapter;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne p1, v5, :cond_3

    .line 50
    const/16 v0, 0x35

    goto :goto_0

    .line 52
    :cond_3
    const/16 v0, 0x15

    goto :goto_0

    .line 54
    :cond_4
    iget-object v5, p0, Lcom/perm/kate/ValueLabelAdapter;->mOrientation:Lcom/perm/kate/ValueLabelAdapter$LabelOrientation;

    sget-object v6, Lcom/perm/kate/ValueLabelAdapter$LabelOrientation;->HORIZONTAL:Lcom/perm/kate/ValueLabelAdapter$LabelOrientation;

    if-ne v5, v6, :cond_1

    .line 55
    if-nez p1, :cond_5

    .line 56
    const/16 v0, 0x13

    goto :goto_0

    .line 57
    :cond_5
    invoke-virtual {p0}, Lcom/perm/kate/ValueLabelAdapter;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne p1, v5, :cond_1

    .line 58
    const/16 v0, 0x15

    goto :goto_0

    .line 68
    :cond_6
    const-string v5, ""

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 70
    :cond_7
    invoke-virtual {p0, p1}, Lcom/perm/kate/ValueLabelAdapter;->getItem(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 76
    .end local v0    # "gravity":I
    .end local v2    # "labelTextView":Landroid/widget/TextView;
    :cond_8
    iget-object v5, p0, Lcom/perm/kate/ValueLabelAdapter;->mContext:Landroid/content/Context;

    const-string v6, "layout_inflater"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 77
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x7f030110

    invoke-virtual {v1, v5, p3, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 81
    .local v4, "view":Landroid/view/View;
    const v5, 0x7f0e0345

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/perm/kate/VerticalTextView;

    .line 84
    .local v3, "vertical_label":Lcom/perm/kate/VerticalTextView;
    const/16 v0, 0x15

    .line 85
    .restart local v0    # "gravity":I
    iget v5, p0, Lcom/perm/kate/ValueLabelAdapter;->textColor:I

    invoke-virtual {v3, v5}, Lcom/perm/kate/VerticalTextView;->setTextColor(I)V

    .line 86
    invoke-virtual {v3, v0}, Lcom/perm/kate/VerticalTextView;->setGravity(I)V

    .line 87
    iget v5, p0, Lcom/perm/kate/ValueLabelAdapter;->rightPadding:I

    invoke-virtual {v3, v7, v7, v5, v7}, Lcom/perm/kate/VerticalTextView;->setPadding(IIII)V

    .line 88
    iget-object v5, p0, Lcom/perm/kate/ValueLabelAdapter;->mItems:Ljava/util/ArrayList;

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/perm/kate/ValueLabelAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge p1, v5, :cond_9

    if-lez p1, :cond_9

    .line 89
    invoke-virtual {p0}, Lcom/perm/kate/ValueLabelAdapter;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ge p1, v5, :cond_9

    .line 90
    iget-object v5, p0, Lcom/perm/kate/ValueLabelAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v3, v5}, Lcom/perm/kate/VerticalTextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    :goto_3
    invoke-virtual {v3, v8}, Lcom/perm/kate/VerticalTextView;->setTextSize(F)V

    goto :goto_2

    .line 92
    :cond_9
    const-string v5, ""

    invoke-virtual {v3, v5}, Lcom/perm/kate/VerticalTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method
