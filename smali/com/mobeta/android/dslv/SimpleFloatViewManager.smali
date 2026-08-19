.class public abstract Lcom/mobeta/android/dslv/SimpleFloatViewManager;
.super Ljava/lang/Object;
.source "SimpleFloatViewManager.java"

# interfaces
.implements Lcom/mobeta/android/dslv/DragSortListView$FloatViewManager;


# instance fields
.field private mFloatBGColor:I

.field private mFloatBitmap:Landroid/graphics/Bitmap;

.field private mImageView:Landroid/widget/ImageView;

.field private mListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Landroid/widget/ListView;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x1000000

    .line 22
    iput v0, p0, Lcom/mobeta/android/dslv/SimpleFloatViewManager;->mFloatBGColor:I

    .line 27
    iput-object p1, p0, Lcom/mobeta/android/dslv/SimpleFloatViewManager;->mListView:Landroid/widget/ListView;

    return-void
.end method


# virtual methods
.method public onCreateFloatView(I)Landroid/view/View;
    .locals 3

    .line 42
    iget-object v0, p0, Lcom/mobeta/android/dslv/SimpleFloatViewManager;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    add-int/2addr p1, v1

    iget-object v1, p0, Lcom/mobeta/android/dslv/SimpleFloatViewManager;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 48
    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    const/4 v1, 0x1

    .line 53
    invoke-virtual {p1, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 54
    invoke-virtual {p1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/mobeta/android/dslv/SimpleFloatViewManager;->mFloatBitmap:Landroid/graphics/Bitmap;

    .line 55
    invoke-virtual {p1, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 57
    iget-object v1, p0, Lcom/mobeta/android/dslv/SimpleFloatViewManager;->mImageView:Landroid/widget/ImageView;

    if-nez v1, :cond_1

    .line 58
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/mobeta/android/dslv/SimpleFloatViewManager;->mListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mobeta/android/dslv/SimpleFloatViewManager;->mImageView:Landroid/widget/ImageView;

    .line 60
    :cond_1
    iget-object v1, p0, Lcom/mobeta/android/dslv/SimpleFloatViewManager;->mImageView:Landroid/widget/ImageView;

    iget v2, p0, Lcom/mobeta/android/dslv/SimpleFloatViewManager;->mFloatBGColor:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 61
    iget-object v1, p0, Lcom/mobeta/android/dslv/SimpleFloatViewManager;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 62
    iget-object v0, p0, Lcom/mobeta/android/dslv/SimpleFloatViewManager;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/mobeta/android/dslv/SimpleFloatViewManager;->mFloatBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 63
    iget-object v0, p0, Lcom/mobeta/android/dslv/SimpleFloatViewManager;->mImageView:Landroid/widget/ImageView;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-direct {v1, v2, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    iget-object p1, p0, Lcom/mobeta/android/dslv/SimpleFloatViewManager;->mImageView:Landroid/widget/ImageView;

    return-object p1
.end method

.method public onDestroyFloatView(Landroid/view/View;)V
    .locals 1

    .line 82
    check-cast p1, Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 84
    iget-object p1, p0, Lcom/mobeta/android/dslv/SimpleFloatViewManager;->mFloatBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 85
    iput-object v0, p0, Lcom/mobeta/android/dslv/SimpleFloatViewManager;->mFloatBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 0

    .line 31
    iput p1, p0, Lcom/mobeta/android/dslv/SimpleFloatViewManager;->mFloatBGColor:I

    return-void
.end method
