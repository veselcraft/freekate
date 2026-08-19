.class Lcom/perm/kate/PaintActivity$1;
.super Ljava/lang/Object;
.source "PaintActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/PaintActivity;->onClear()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/PaintActivity;


# direct methods
.method constructor <init>(Lcom/perm/kate/PaintActivity;)V
    .locals 0

    .line 356
    iput-object p1, p0, Lcom/perm/kate/PaintActivity$1;->this$0:Lcom/perm/kate/PaintActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 358
    iget-object p1, p0, Lcom/perm/kate/PaintActivity$1;->this$0:Lcom/perm/kate/PaintActivity;

    invoke-static {p1}, Lcom/perm/kate/PaintActivity;->access$100(Lcom/perm/kate/PaintActivity;)Lcom/perm/kate/PaintActivity$MyView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/perm/kate/PaintActivity$MyView;->clearCanvas()V

    .line 359
    iget-object p1, p0, Lcom/perm/kate/PaintActivity$1;->this$0:Lcom/perm/kate/PaintActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/perm/kate/PaintActivity;->access$202(Lcom/perm/kate/PaintActivity;Z)Z

    .line 360
    iget-object p1, p0, Lcom/perm/kate/PaintActivity$1;->this$0:Lcom/perm/kate/PaintActivity;

    invoke-static {p1}, Lcom/perm/kate/PaintActivity;->access$300(Lcom/perm/kate/PaintActivity;)V

    return-void
.end method
