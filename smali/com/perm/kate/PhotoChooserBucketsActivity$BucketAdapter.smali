.class public Lcom/perm/kate/PhotoChooserBucketsActivity$BucketAdapter;
.super Landroid/widget/BaseAdapter;
.source "PhotoChooserBucketsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/PhotoChooserBucketsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BucketAdapter"
.end annotation


# instance fields
.field buckets:Ljava/util/ArrayList;

.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/perm/kate/PhotoChooserBucketsActivity;


# direct methods
.method public constructor <init>(Lcom/perm/kate/PhotoChooserBucketsActivity;Ljava/util/ArrayList;)V
    .locals 1

    .line 105
    iput-object p1, p0, Lcom/perm/kate/PhotoChooserBucketsActivity$BucketAdapter;->this$0:Lcom/perm/kate/PhotoChooserBucketsActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const-string v0, "layout_inflater"

    .line 106
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/perm/kate/PhotoChooserBucketsActivity$BucketAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 107
    iput-object p2, p0, Lcom/perm/kate/PhotoChooserBucketsActivity$BucketAdapter;->buckets:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/perm/kate/PhotoChooserBucketsActivity$BucketAdapter;->buckets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/perm/kate/PhotoChooserBucketsActivity$BucketAdapter;->buckets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x5
    .end annotation

    if-nez p2, :cond_0

    .line 115
    iget-object p2, p0, Lcom/perm/kate/PhotoChooserBucketsActivity$BucketAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0c00e8

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 117
    :cond_0
    iget-object p3, p0, Lcom/perm/kate/PhotoChooserBucketsActivity$BucketAdapter;->buckets:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/PhotoChooserBucketsActivity$Bucket;

    const p3, 0x7f090338

    .line 119
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    const v0, 0x7f09032e

    .line 120
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 121
    iget-object v1, p0, Lcom/perm/kate/PhotoChooserBucketsActivity$BucketAdapter;->this$0:Lcom/perm/kate/PhotoChooserBucketsActivity;

    iget-object v1, v1, Lcom/perm/kate/PhotoChooserBucketsActivity;->imageClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    iget v1, p1, Lcom/perm/kate/PhotoChooserBucketsActivity$Bucket;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    const v1, 0x7f090008

    .line 123
    iget-object v2, p1, Lcom/perm/kate/PhotoChooserBucketsActivity$Bucket;->name:Ljava/lang/String;

    invoke-virtual {p3, v1, v2}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 124
    iget-object v1, p1, Lcom/perm/kate/PhotoChooserBucketsActivity$Bucket;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget v0, p1, Lcom/perm/kate/PhotoChooserBucketsActivity$Bucket;->image_id:I

    iget p1, p1, Lcom/perm/kate/PhotoChooserBucketsActivity$Bucket;->rotate:I

    invoke-static {p3, v0, p1}, Lcom/perm/kate/PhotoChooserActivity;->displayImageInThread(Landroid/widget/ImageView;II)V

    return-object p2
.end method
