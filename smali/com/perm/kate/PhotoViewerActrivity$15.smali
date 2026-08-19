.class Lcom/perm/kate/PhotoViewerActrivity$15;
.super Ljava/lang/Object;
.source "PhotoViewerActrivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/PhotoViewerActrivity;->showPhotoTags(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PhotoViewerActrivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/PhotoViewerActrivity;)V
    .locals 0

    .line 1035
    iput-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity$15;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1038
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/perm/kate/api/PhotoTag;

    if-eqz p1, :cond_0

    .line 1040
    iget-object v0, p0, Lcom/perm/kate/PhotoViewerActrivity$15;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {v0, p1}, Lcom/perm/kate/PhotoViewerActrivity;->access$2100(Lcom/perm/kate/PhotoViewerActrivity;Lcom/perm/kate/api/PhotoTag;)V

    :cond_0
    return-void
.end method
