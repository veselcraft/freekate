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
    .param p1, "this$0"    # Lcom/perm/kate/PhotoChooserBucketsActivity;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/perm/kate/PhotoChooserBucketsActivity$1;->this$0:Lcom/perm/kate/PhotoChooserBucketsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 145
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 146
    .local v0, "bucket_id":I
    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/perm/kate/PhotoChooserBucketsActivity$1;->this$0:Lcom/perm/kate/PhotoChooserBucketsActivity;

    const-class v4, Lcom/perm/kate/PhotoChooserActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 147
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "bucket_id"

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 148
    iget-object v3, p0, Lcom/perm/kate/PhotoChooserBucketsActivity$1;->this$0:Lcom/perm/kate/PhotoChooserBucketsActivity;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/perm/kate/PhotoChooserBucketsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 150
    const v3, 0x7f0e0067

    invoke-virtual {p1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 151
    .local v1, "bucket_name":Ljava/lang/String;
    invoke-static {v1}, Lcom/perm/kate/PhotoChooserBucketsActivity;->access$000(Ljava/lang/String;)V

    .line 152
    return-void
.end method
