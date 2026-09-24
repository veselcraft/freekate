.class public Lcom/perm/kate/smile/StickerAdapter;
.super Landroid/widget/BaseAdapter;
.source "StickerAdapter.java"


# instance fields
.field activity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/v4/app/FragmentActivity;",
            ">;"
        }
    .end annotation
.end field

.field private clickListener:Landroid/view/View$OnClickListener;

.field public ids:[I

.field listener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;Ljava/lang/ref/WeakReference;[I)V
    .locals 1
    .param p3, "ids"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;",
            ">;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/v4/app/FragmentActivity;",
            ">;[I)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p1, "listener":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/perm/kate/smile/SmilePagerAdapter$SmileSelectedListener;>;"
    .local p2, "activity":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/support/v4/app/FragmentActivity;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 75
    new-instance v0, Lcom/perm/kate/smile/StickerAdapter$1;

    invoke-direct {v0, p0}, Lcom/perm/kate/smile/StickerAdapter$1;-><init>(Lcom/perm/kate/smile/StickerAdapter;)V

    iput-object v0, p0, Lcom/perm/kate/smile/StickerAdapter;->clickListener:Landroid/view/View$OnClickListener;

    .line 25
    iput-object p1, p0, Lcom/perm/kate/smile/StickerAdapter;->listener:Ljava/lang/ref/WeakReference;

    .line 26
    iput-object p2, p0, Lcom/perm/kate/smile/StickerAdapter;->activity:Ljava/lang/ref/WeakReference;

    .line 27
    iput-object p3, p0, Lcom/perm/kate/smile/StickerAdapter;->ids:[I

    .line 28
    invoke-static {}, Lcom/perm/utils/LeakDetector;->getInstance()Lcom/perm/utils/LeakDetector;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/perm/utils/LeakDetector;->monitorObject(Ljava/lang/Object;)V

    .line 29
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/perm/kate/smile/StickerAdapter;->ids:[I

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 38
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 43
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x0

    .line 48
    move-object v9, p2

    .line 49
    .local v9, "vi":Landroid/view/View;
    if-nez p2, :cond_0

    .line 51
    iget-object v0, p0, Lcom/perm/kate/smile/StickerAdapter;->activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/FragmentActivity;

    const-string v3, "layout_inflater"

    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v3, 0x7f030100

    .line 52
    invoke-virtual {v0, v3, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/perm/kate/smile/StickerAdapter;->clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v9, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    const v0, 0x7f0e028b

    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 57
    .local v2, "iv":Landroid/widget/ImageView;
    iget-object v0, p0, Lcom/perm/kate/smile/StickerAdapter;->ids:[I

    aget v7, v0, p1

    .line 59
    .local v7, "id":I
    const-wide/high16 v10, 0x4050000000000000L    # 64.0

    invoke-static {v10, v11}, Lcom/perm/kate/Helper;->getDIP(D)I

    move-result v4

    .line 61
    .local v4, "sticker_size":I
    const/16 v8, 0x40

    .line 63
    .local v8, "png_size":I
    const/16 v0, 0x40

    if-le v4, v0, :cond_1

    .line 64
    const/16 v8, 0x80

    .line 65
    :cond_1
    const/16 v0, 0x80

    if-le v4, v0, :cond_2

    .line 66
    const/16 v8, 0x100

    .line 68
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "images/stickers/"

    invoke-static {v3}, Lcom/perm/kate/KApplication;->instanceLink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "b.png"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, "url":Ljava/lang/String;
    invoke-static {}, Lcom/perm/kate/AttachmentsHelper;->getResIdForNoPhoto4()I

    move-result v5

    .line 70
    .local v5, "stub":I
    invoke-static {}, Lcom/perm/kate/KApplication;->getImageLoader()Lcom/perm/kate/ImageLoader;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual/range {v0 .. v6}, Lcom/perm/kate/ImageLoader;->DisplayImage(Ljava/lang/String;Landroid/widget/ImageView;ZIIZ)V

    .line 71
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 72
    return-object v9
.end method
