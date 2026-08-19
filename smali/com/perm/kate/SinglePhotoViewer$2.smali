.class Lcom/perm/kate/SinglePhotoViewer$2;
.super Ljava/lang/Object;
.source "SinglePhotoViewer.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/SinglePhotoViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/SinglePhotoViewer;


# direct methods
.method constructor <init>(Lcom/perm/kate/SinglePhotoViewer;)V
    .locals 0

    .line 266
    iput-object p1, p0, Lcom/perm/kate/SinglePhotoViewer$2;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility",
            "SetTextI18n"
        }
    .end annotation

    .line 270
    iget-object p1, p0, Lcom/perm/kate/SinglePhotoViewer$2;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    invoke-static {p1}, Lcom/perm/kate/SinglePhotoViewer;->access$300(Lcom/perm/kate/SinglePhotoViewer;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 273
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    .line 274
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 275
    iget-object v2, p0, Lcom/perm/kate/SinglePhotoViewer$2;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    invoke-static {v2}, Lcom/perm/kate/SinglePhotoViewer;->access$400(Lcom/perm/kate/SinglePhotoViewer;)I

    move-result v2

    .line 276
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-eq v3, v0, :cond_0

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    goto :goto_0

    .line 279
    :cond_0
    iget-object v3, p0, Lcom/perm/kate/SinglePhotoViewer$2;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/perm/kate/SinglePhotoViewer;->access$302(Lcom/perm/kate/SinglePhotoViewer;Z)Z

    :cond_1
    if-lez v2, :cond_2

    .line 282
    iget-object v3, p0, Lcom/perm/kate/SinglePhotoViewer$2;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    invoke-static {v3, p1, v1, v2}, Lcom/perm/kate/SinglePhotoViewer;->access$500(Lcom/perm/kate/SinglePhotoViewer;III)V

    goto :goto_0

    .line 284
    :cond_2
    iget-object v2, p0, Lcom/perm/kate/SinglePhotoViewer$2;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    invoke-static {v2, p1, v1}, Lcom/perm/kate/SinglePhotoViewer;->access$600(Lcom/perm/kate/SinglePhotoViewer;II)V

    .line 287
    :goto_0
    iget-object v2, p0, Lcom/perm/kate/SinglePhotoViewer$2;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    invoke-static {v2}, Lcom/perm/kate/SinglePhotoViewer;->access$700(Lcom/perm/kate/SinglePhotoViewer;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "action:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " x:"

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " y:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    return v0
.end method
