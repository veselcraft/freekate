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
    .param p1, "this$0"    # Lcom/perm/kate/SinglePhotoViewer;

    .prologue
    .line 294
    iput-object p1, p0, Lcom/perm/kate/SinglePhotoViewer$3;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x0

    .line 297
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v0, v2

    .line 298
    .local v0, "x":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v1, v2

    .line 299
    .local v1, "y":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 313
    :goto_0
    iget-object v2, p0, Lcom/perm/kate/SinglePhotoViewer$3;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    invoke-static {v2}, Lcom/perm/kate/SinglePhotoViewer;->access$1800(Lcom/perm/kate/SinglePhotoViewer;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "action:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " x:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " y:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " _x:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/perm/kate/SinglePhotoViewer$3;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    invoke-static {v4}, Lcom/perm/kate/SinglePhotoViewer;->access$1600(Lcom/perm/kate/SinglePhotoViewer;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " _y:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/perm/kate/SinglePhotoViewer$3;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    invoke-static {v4}, Lcom/perm/kate/SinglePhotoViewer;->access$1700(Lcom/perm/kate/SinglePhotoViewer;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 314
    return v5

    .line 301
    :pswitch_0
    iget-object v2, p0, Lcom/perm/kate/SinglePhotoViewer$3;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    invoke-static {v2, v0}, Lcom/perm/kate/SinglePhotoViewer;->access$802(Lcom/perm/kate/SinglePhotoViewer;I)I

    .line 302
    iget-object v2, p0, Lcom/perm/kate/SinglePhotoViewer$3;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    invoke-static {v2, v1}, Lcom/perm/kate/SinglePhotoViewer;->access$902(Lcom/perm/kate/SinglePhotoViewer;I)I

    .line 303
    iget-object v2, p0, Lcom/perm/kate/SinglePhotoViewer$3;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    iget-object v3, p0, Lcom/perm/kate/SinglePhotoViewer$3;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    invoke-static {v3}, Lcom/perm/kate/SinglePhotoViewer;->access$1100(Lcom/perm/kate/SinglePhotoViewer;)I

    move-result v3

    iget-object v4, p0, Lcom/perm/kate/SinglePhotoViewer$3;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    invoke-static {v4}, Lcom/perm/kate/SinglePhotoViewer;->access$1200(Lcom/perm/kate/SinglePhotoViewer;)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Lcom/perm/kate/SinglePhotoViewer;->access$1002(Lcom/perm/kate/SinglePhotoViewer;I)I

    .line 304
    iget-object v2, p0, Lcom/perm/kate/SinglePhotoViewer$3;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    iget-object v3, p0, Lcom/perm/kate/SinglePhotoViewer$3;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    invoke-static {v3}, Lcom/perm/kate/SinglePhotoViewer;->access$1400(Lcom/perm/kate/SinglePhotoViewer;)I

    move-result v3

    iget-object v4, p0, Lcom/perm/kate/SinglePhotoViewer$3;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    invoke-static {v4}, Lcom/perm/kate/SinglePhotoViewer;->access$1500(Lcom/perm/kate/SinglePhotoViewer;)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Lcom/perm/kate/SinglePhotoViewer;->access$1302(Lcom/perm/kate/SinglePhotoViewer;I)I

    .line 305
    iget-object v2, p0, Lcom/perm/kate/SinglePhotoViewer$3;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    iget-object v3, p0, Lcom/perm/kate/SinglePhotoViewer$3;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    invoke-static {v3}, Lcom/perm/kate/SinglePhotoViewer;->access$1000(Lcom/perm/kate/SinglePhotoViewer;)I

    move-result v3

    iget-object v4, p0, Lcom/perm/kate/SinglePhotoViewer$3;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    invoke-static {v4}, Lcom/perm/kate/SinglePhotoViewer;->access$800(Lcom/perm/kate/SinglePhotoViewer;)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Lcom/perm/kate/SinglePhotoViewer;->access$1602(Lcom/perm/kate/SinglePhotoViewer;I)I

    .line 306
    iget-object v2, p0, Lcom/perm/kate/SinglePhotoViewer$3;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    iget-object v3, p0, Lcom/perm/kate/SinglePhotoViewer$3;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    invoke-static {v3}, Lcom/perm/kate/SinglePhotoViewer;->access$1300(Lcom/perm/kate/SinglePhotoViewer;)I

    move-result v3

    iget-object v4, p0, Lcom/perm/kate/SinglePhotoViewer$3;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    invoke-static {v4}, Lcom/perm/kate/SinglePhotoViewer;->access$900(Lcom/perm/kate/SinglePhotoViewer;)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Lcom/perm/kate/SinglePhotoViewer;->access$1702(Lcom/perm/kate/SinglePhotoViewer;I)I

    .line 307
    iget-object v2, p0, Lcom/perm/kate/SinglePhotoViewer$3;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/perm/kate/SinglePhotoViewer;->access$302(Lcom/perm/kate/SinglePhotoViewer;Z)Z

    goto/16 :goto_0

    .line 310
    :pswitch_1
    iget-object v2, p0, Lcom/perm/kate/SinglePhotoViewer$3;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    invoke-static {v2, v5}, Lcom/perm/kate/SinglePhotoViewer;->access$302(Lcom/perm/kate/SinglePhotoViewer;Z)Z

    goto/16 :goto_0

    .line 299
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
