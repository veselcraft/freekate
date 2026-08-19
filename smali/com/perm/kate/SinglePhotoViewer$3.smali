.class Lcom/perm/kate/SinglePhotoViewer$3;
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

    .line 293
    iput-object p1, p0, Lcom/perm/kate/SinglePhotoViewer$3;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility",
            "SetTextI18n"
        }
    .end annotation

    .line 297
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    .line 298
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    .line 299
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-eq v1, v3, :cond_0

    goto :goto_0

    .line 310
    :cond_0
    iget-object v1, p0, Lcom/perm/kate/SinglePhotoViewer$3;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    invoke-static {v1, v2}, Lcom/perm/kate/SinglePhotoViewer;->access$302(Lcom/perm/kate/SinglePhotoViewer;Z)Z

    goto :goto_0

    .line 301
    :cond_1
    iget-object v1, p0, Lcom/perm/kate/SinglePhotoViewer$3;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    invoke-static {v1, p1}, Lcom/perm/kate/SinglePhotoViewer;->access$802(Lcom/perm/kate/SinglePhotoViewer;I)I

    .line 302
    iget-object v1, p0, Lcom/perm/kate/SinglePhotoViewer$3;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    invoke-static {v1, v0}, Lcom/perm/kate/SinglePhotoViewer;->access$902(Lcom/perm/kate/SinglePhotoViewer;I)I

    .line 303
    iget-object v1, p0, Lcom/perm/kate/SinglePhotoViewer$3;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    invoke-static {v1}, Lcom/perm/kate/SinglePhotoViewer;->access$1100(Lcom/perm/kate/SinglePhotoViewer;)I

    move-result v4

    iget-object v5, p0, Lcom/perm/kate/SinglePhotoViewer$3;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    invoke-static {v5}, Lcom/perm/kate/SinglePhotoViewer;->access$1200(Lcom/perm/kate/SinglePhotoViewer;)I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v1, v4}, Lcom/perm/kate/SinglePhotoViewer;->access$1002(Lcom/perm/kate/SinglePhotoViewer;I)I

    .line 304
    iget-object v1, p0, Lcom/perm/kate/SinglePhotoViewer$3;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    invoke-static {v1}, Lcom/perm/kate/SinglePhotoViewer;->access$1400(Lcom/perm/kate/SinglePhotoViewer;)I

    move-result v4

    iget-object v5, p0, Lcom/perm/kate/SinglePhotoViewer$3;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    invoke-static {v5}, Lcom/perm/kate/SinglePhotoViewer;->access$1500(Lcom/perm/kate/SinglePhotoViewer;)I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v1, v4}, Lcom/perm/kate/SinglePhotoViewer;->access$1302(Lcom/perm/kate/SinglePhotoViewer;I)I

    .line 305
    iget-object v1, p0, Lcom/perm/kate/SinglePhotoViewer$3;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    invoke-static {v1}, Lcom/perm/kate/SinglePhotoViewer;->access$1000(Lcom/perm/kate/SinglePhotoViewer;)I

    move-result v4

    iget-object v5, p0, Lcom/perm/kate/SinglePhotoViewer$3;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    invoke-static {v5}, Lcom/perm/kate/SinglePhotoViewer;->access$800(Lcom/perm/kate/SinglePhotoViewer;)I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v1, v4}, Lcom/perm/kate/SinglePhotoViewer;->access$1602(Lcom/perm/kate/SinglePhotoViewer;I)I

    .line 306
    iget-object v1, p0, Lcom/perm/kate/SinglePhotoViewer$3;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    invoke-static {v1}, Lcom/perm/kate/SinglePhotoViewer;->access$1300(Lcom/perm/kate/SinglePhotoViewer;)I

    move-result v4

    iget-object v5, p0, Lcom/perm/kate/SinglePhotoViewer$3;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    invoke-static {v5}, Lcom/perm/kate/SinglePhotoViewer;->access$900(Lcom/perm/kate/SinglePhotoViewer;)I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v1, v4}, Lcom/perm/kate/SinglePhotoViewer;->access$1702(Lcom/perm/kate/SinglePhotoViewer;I)I

    .line 307
    iget-object v1, p0, Lcom/perm/kate/SinglePhotoViewer$3;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    invoke-static {v1, v3}, Lcom/perm/kate/SinglePhotoViewer;->access$302(Lcom/perm/kate/SinglePhotoViewer;Z)Z

    .line 313
    :goto_0
    iget-object v1, p0, Lcom/perm/kate/SinglePhotoViewer$3;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    invoke-static {v1}, Lcom/perm/kate/SinglePhotoViewer;->access$1800(Lcom/perm/kate/SinglePhotoViewer;)Landroid/widget/TextView;

    move-result-object v1

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

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " _x:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/perm/kate/SinglePhotoViewer$3;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    invoke-static {p1}, Lcom/perm/kate/SinglePhotoViewer;->access$1600(Lcom/perm/kate/SinglePhotoViewer;)I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " _y:"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/perm/kate/SinglePhotoViewer$3;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    invoke-static {p1}, Lcom/perm/kate/SinglePhotoViewer;->access$1700(Lcom/perm/kate/SinglePhotoViewer;)I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return v2
.end method
