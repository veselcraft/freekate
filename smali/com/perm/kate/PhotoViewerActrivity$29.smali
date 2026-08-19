.class Lcom/perm/kate/PhotoViewerActrivity$29;
.super Ljava/lang/Object;
.source "PhotoViewerActrivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/PhotoViewerActrivity;
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

    .line 1451
    iput-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity$29;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1454
    iget-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity$29;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {p1}, Lcom/perm/kate/PhotoViewerActrivity;->access$000(Lcom/perm/kate/PhotoViewerActrivity;)Lcom/perm/kate/api/Photo;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity$29;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {p1}, Lcom/perm/kate/PhotoViewerActrivity;->access$000(Lcom/perm/kate/PhotoViewerActrivity;)Lcom/perm/kate/api/Photo;

    move-result-object p1

    iget-object p1, p1, Lcom/perm/kate/api/Photo;->tags_count:Ljava/lang/Integer;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity$29;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {p1}, Lcom/perm/kate/PhotoViewerActrivity;->access$000(Lcom/perm/kate/PhotoViewerActrivity;)Lcom/perm/kate/api/Photo;

    move-result-object p1

    iget-object p1, p1, Lcom/perm/kate/api/Photo;->tags_count:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-lez p1, :cond_0

    .line 1455
    iget-object p1, p0, Lcom/perm/kate/PhotoViewerActrivity$29;->this$0:Lcom/perm/kate/PhotoViewerActrivity;

    invoke-static {p1}, Lcom/perm/kate/PhotoViewerActrivity;->access$3400(Lcom/perm/kate/PhotoViewerActrivity;)V

    :cond_0
    return-void
.end method
