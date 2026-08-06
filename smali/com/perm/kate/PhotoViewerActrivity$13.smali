.class Lcom/perm/kate/PhotoViewerActrivity$13;
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
    .param p1, "this$0"    # Lcom/perm/kate/PhotoViewerActrivity;

    .prologue
    .line 905
    iput-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity$13;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 908
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/perm/kate/api/PhotoTag;

    .line 909
    .local v0, "photoTag":Lcom/perm/kate/api/PhotoTag;
    if-eqz v0, :cond_0

    .line 910
    iget-object v1, p0, Lcom/perm/kate/PhotoViewerActrivity$13;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {v1, v0}, Lcom/perm/kate/PhotoViewerActrivity;->access$1900(Lcom/perm/kate/PhotoViewerActrivity;Lcom/perm/kate/api/PhotoTag;)V

    .line 911
    :cond_0
    return-void
.end method
