.class public Lcom/my/target/core/ui/views/PageDotsView;
.super Landroid/widget/LinearLayout;
.source "PageDotsView.java"


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private b:Landroid/graphics/Bitmap;

.field private c:[Landroid/widget/ImageView;

.field private d:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 23
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    .prologue
    .line 58
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/my/target/core/ui/views/PageDotsView;->c:[Landroid/widget/ImageView;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget v0, p0, Lcom/my/target/core/ui/views/PageDotsView;->d:I

    iget-object v1, p0, Lcom/my/target/core/ui/views/PageDotsView;->c:[Landroid/widget/ImageView;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 60
    iget-object v0, p0, Lcom/my/target/core/ui/views/PageDotsView;->c:[Landroid/widget/ImageView;

    iget v1, p0, Lcom/my/target/core/ui/views/PageDotsView;->d:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/my/target/core/ui/views/PageDotsView;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 61
    iget-object v0, p0, Lcom/my/target/core/ui/views/PageDotsView;->c:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/my/target/core/ui/views/PageDotsView;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 62
    iput p1, p0, Lcom/my/target/core/ui/views/PageDotsView;->d:I

    .line 64
    :cond_0
    return-void
.end method

.method public final a(III)V
    .locals 9

    .prologue
    const/16 v2, 0xc

    const/4 v8, -0x2

    const/4 v7, 0x5

    .line 27
    new-instance v1, Lcom/my/target/core/utils/l;

    invoke-virtual {p0}, Lcom/my/target/core/ui/views/PageDotsView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/my/target/core/utils/l;-><init>(Landroid/content/Context;)V

    .line 29
    invoke-virtual {v1, v2}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v0

    invoke-static {v0, p3}, Lcom/my/target/core/resources/a;->a(II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/my/target/core/ui/views/PageDotsView;->a:Landroid/graphics/Bitmap;

    .line 32
    invoke-virtual {v1, v2}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v0

    invoke-static {v0, p2}, Lcom/my/target/core/resources/a;->a(II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/my/target/core/ui/views/PageDotsView;->b:Landroid/graphics/Bitmap;

    .line 34
    new-array v0, p1, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/my/target/core/ui/views/PageDotsView;->c:[Landroid/widget/ImageView;

    .line 36
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 38
    iget-object v2, p0, Lcom/my/target/core/ui/views/PageDotsView;->c:[Landroid/widget/ImageView;

    new-instance v3, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/my/target/core/ui/views/PageDotsView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    aput-object v3, v2, v0

    .line 40
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 45
    invoke-virtual {v1, v7}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v3

    .line 46
    invoke-virtual {v1, v7}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v4

    .line 47
    invoke-virtual {v1, v7}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v5

    .line 48
    invoke-virtual {v1, v7}, Lcom/my/target/core/utils/l;->a(I)I

    move-result v6

    .line 45
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 49
    iget-object v3, p0, Lcom/my/target/core/ui/views/PageDotsView;->c:[Landroid/widget/ImageView;

    aget-object v3, v3, v0

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    iget-object v2, p0, Lcom/my/target/core/ui/views/PageDotsView;->c:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/my/target/core/ui/views/PageDotsView;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 52
    iget-object v2, p0, Lcom/my/target/core/ui/views/PageDotsView;->c:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Lcom/my/target/core/ui/views/PageDotsView;->addView(Landroid/view/View;)V

    .line 36
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 54
    :cond_0
    return-void
.end method
