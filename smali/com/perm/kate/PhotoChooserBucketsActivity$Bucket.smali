.class Lcom/perm/kate/PhotoChooserBucketsActivity$Bucket;
.super Ljava/lang/Object;
.source "PhotoChooserBucketsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/PhotoChooserBucketsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Bucket"
.end annotation


# instance fields
.field public id:I

.field public image_id:I

.field public name:Ljava/lang/String;

.field rotate:I


# direct methods
.method public constructor <init>(ILjava/lang/String;II)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "image_id"    # I
    .param p4, "rotate"    # I

    .prologue
    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    iput p1, p0, Lcom/perm/kate/PhotoChooserBucketsActivity$Bucket;->id:I

    .line 163
    iput-object p2, p0, Lcom/perm/kate/PhotoChooserBucketsActivity$Bucket;->name:Ljava/lang/String;

    .line 164
    iput p3, p0, Lcom/perm/kate/PhotoChooserBucketsActivity$Bucket;->image_id:I

    .line 165
    iput p4, p0, Lcom/perm/kate/PhotoChooserBucketsActivity$Bucket;->rotate:I

    .line 166
    return-void
.end method
