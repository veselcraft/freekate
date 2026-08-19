.class Lcom/perm/kate/PhotoChooserBucketsActivity$1;
.super Ljava/lang/Object;
.source "PhotoChooserBucketsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/PhotoChooserBucketsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PhotoChooserBucketsActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/PhotoChooserBucketsActivity;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/perm/kate/PhotoChooserBucketsActivity$1;->this$0:Lcom/perm/kate/PhotoChooserBucketsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 150
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 151
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/perm/kate/PhotoChooserBucketsActivity$1;->this$0:Lcom/perm/kate/PhotoChooserBucketsActivity;

    const-class v3, Lcom/perm/kate/PhotoChooserActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "bucket_id"

    .line 152
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 153
    iget-object v0, p0, Lcom/perm/kate/PhotoChooserBucketsActivity$1;->this$0:Lcom/perm/kate/PhotoChooserBucketsActivity;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    const v0, 0x7f090008

    .line 155
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 156
    invoke-static {p1}, Lcom/perm/kate/PhotoChooserBucketsActivity;->access$000(Ljava/lang/String;)V

    return-void
.end method
