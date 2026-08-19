.class Lcom/perm/kate/PhotoViewerActrivity$7;
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

    .line 700
    iput-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity$7;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    iput-object p2, p0, Lcom/perm/kate/PhotoViewerActrivity$7;->val$menuItems:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 703
    iget-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity$7;->val$menuItems:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/MenuItemDetails;

    iget p1, p1, Lcom/perm/kate/MenuItemDetails;->code:I

    if-nez p1, :cond_0

    .line 705
    iget-object p2, p0, Lcom/perm/kate/PhotoViewerActrivity$7;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {p2}, Lcom/perm/kate/PhotoViewerActrivity;->access$800(Lcom/perm/kate/PhotoViewerActrivity;)V

    :cond_0
    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 707
    iget-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity$7;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {p1}, Lcom/perm/kate/PhotoViewerActrivity;->access$900(Lcom/perm/kate/PhotoViewerActrivity;)V

    :cond_1
    return-void
.end method
