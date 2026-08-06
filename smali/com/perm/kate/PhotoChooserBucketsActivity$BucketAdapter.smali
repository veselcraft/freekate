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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/PhotoChooserBucketsActivity$Bucket;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/perm/kate/PhotoChooserBucketsActivity;


# direct methods
.method public constructor <init>(Lcom/perm/kate/PhotoChooserBucketsActivity;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "this$0"    # Lcom/perm/kate/PhotoChooserBucketsActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/perm/kate/PhotoChooserBucketsActivity$Bucket;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 100
    .local p2, "buckets":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/perm/kate/PhotoChooserBucketsActivity$Bucket;>;"
    iput-object p1, p0, Lcom/perm/kate/PhotoChooserBucketsActivity$BucketAdapter;->this$0:Lcom/perm/kate/PhotoChooserBucketsActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 101
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Lcom/perm/kate/PhotoChooserBucketsActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/perm/kate/PhotoChooserBucketsActivity$BucketAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 102
    iput-object p2, p0, Lcom/perm/kate/PhotoChooserBucketsActivity$BucketAdapter;->buckets:Ljava/util/ArrayList;

    .line 103
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/perm/kate/PhotoChooserBucketsActivity$BucketAdapter;->buckets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 131
    iget-object v0, p0, Lcom/perm/kate/PhotoChooserBucketsActivity$BucketAdapter;->buckets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 136
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 108
    move-object v3, p2

    .line 109
    .local v3, "view":Landroid/view/View;
    if-nez v3, :cond_0

    .line 110
    iget-object v4, p0, Lcom/perm/kate/PhotoChooserBucketsActivity$BucketAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f0300ce

    const/4 v6, 0x0

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 112
    :cond_0
    iget-object v4, p0, Lcom/perm/kate/PhotoChooserBucketsActivity$BucketAdapter;->buckets:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/PhotoChooserBucketsActivity$Bucket;

    .line 114
    .local v0, "bucket":Lcom/perm/kate/PhotoChooserBucketsActivity$Bucket;
    const v4, 0x7f0e027f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 115
    .local v1, "imageview":Landroid/widget/ImageView;
    const v4, 0x7f0e0280

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 116
    .local v2, "textView":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/perm/kate/PhotoChooserBucketsActivity$BucketAdapter;->this$0:Lcom/perm/kate/PhotoChooserBucketsActivity;

    iget-object v4, v4, Lcom/perm/kate/PhotoChooserBucketsActivity;->imageClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    iget v4, v0, Lcom/perm/kate/PhotoChooserBucketsActivity$Bucket;->id:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 118
    const v4, 0x7f0e0067

    iget-object v5, v0, Lcom/perm/kate/PhotoChooserBucketsActivity$Bucket;->name:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    .line 119
    iget-object v4, v0, Lcom/perm/kate/PhotoChooserBucketsActivity$Bucket;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget v4, v0, Lcom/perm/kate/PhotoChooserBucketsActivity$Bucket;->image_id:I

    iget v5, v0, Lcom/perm/kate/PhotoChooserBucketsActivity$Bucket;->rotate:I

    invoke-static {v1, v4, v5}, Lcom/perm/kate/PhotoChooserActivity;->displayImageInThread(Landroid/widget/ImageView;II)V

    .line 121
    return-object v3
.end method
