.class Lcom/perm/kate/PhotoViewerActrivity$5;
.super Ljava/lang/Object;
.source "PhotoViewerActrivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/PhotoViewerActrivity;->chooseSearchEngine()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PhotoViewerActrivity;

.field final synthetic val$menuItems:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/perm/kate/PhotoViewerActrivity;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/PhotoViewerActrivity;

    .prologue
    .line 580
    iput-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity$5;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    iput-object p2, p0, Lcom/perm/kate/PhotoViewerActrivity$5;->val$menuItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 583
    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity$5;->val$menuItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/perm/kate/MenuItemDetails;

    iget v0, v1, Lcom/perm/kate/MenuItemDetails;->code:I

    .line 584
    .local v0, "code":I
    if-nez v0, :cond_0

    .line 585
    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity$5;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {v1}, Lcom/perm/kate/PhotoViewerActrivity;->access$600(Lcom/perm/kate/PhotoViewerActrivity;)V

    .line 586
    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 587
    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity$5;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {v1}, Lcom/perm/kate/PhotoViewerActrivity;->access$700(Lcom/perm/kate/PhotoViewerActrivity;)V

    .line 588
    :cond_1
    return-void
.end method
