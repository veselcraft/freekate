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
    .param p1, "this$0"    # Lcom/perm/kate/SinglePhotoViewer;

    .prologue
    .line 267
    iput-object p1, p0, Lcom/perm/kate/SinglePhotoViewer$2;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 271
    iget-object v3, p0, Lcom/perm/kate/SinglePhotoViewer$2;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    invoke-static {v3}, Lcom/perm/kate/SinglePhotoViewer;->access$300(Lcom/perm/kate/SinglePhotoViewer;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 274
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 275
    .local v1, "x":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 276
    .local v2, "y":I
    iget-object v3, p0, Lcom/perm/kate/SinglePhotoViewer$2;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    invoke-static {v3}, Lcom/perm/kate/SinglePhotoViewer;->access$400(Lcom/perm/kate/SinglePhotoViewer;)I

    move-result v0

    .line 277
    .local v0, "side":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 288
    :goto_0
    iget-object v3, p0, Lcom/perm/kate/SinglePhotoViewer$2;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    invoke-static {v3}, Lcom/perm/kate/SinglePhotoViewer;->access$700(Lcom/perm/kate/SinglePhotoViewer;)Landroid/widget/TextView;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "action:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " x:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " y:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 290
    .end local v0    # "side":I
    .end local v1    # "x":I
    .end local v2    # "y":I
    :cond_0
    const/4 v3, 0x1

    return v3

    .line 280
    .restart local v0    # "side":I
    .restart local v1    # "x":I
    .restart local v2    # "y":I
    :pswitch_0
    iget-object v3, p0, Lcom/perm/kate/SinglePhotoViewer$2;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/perm/kate/SinglePhotoViewer;->access$302(Lcom/perm/kate/SinglePhotoViewer;Z)Z

    .line 282
    :pswitch_1
    if-lez v0, :cond_1

    .line 283
    iget-object v3, p0, Lcom/perm/kate/SinglePhotoViewer$2;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    invoke-static {v3, v1, v2, v0}, Lcom/perm/kate/SinglePhotoViewer;->access$500(Lcom/perm/kate/SinglePhotoViewer;III)V

    goto :goto_0

    .line 285
    :cond_1
    iget-object v3, p0, Lcom/perm/kate/SinglePhotoViewer$2;->this$0:Lcom/perm/kate/SinglePhotoViewer;

    invoke-static {v3, v1, v2}, Lcom/perm/kate/SinglePhotoViewer;->access$600(Lcom/perm/kate/SinglePhotoViewer;II)V

    goto :goto_0

    .line 277
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
