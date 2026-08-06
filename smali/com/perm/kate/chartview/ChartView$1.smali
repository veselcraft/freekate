.class Lcom/perm/kate/chartview/ChartView$1;
.super Ljava/lang/Object;
.source "ChartView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/chartview/ChartView;->onOrientationChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/chartview/ChartView;


# direct methods
.method constructor <init>(Lcom/perm/kate/chartview/ChartView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/chartview/ChartView;

    .prologue
    .line 331
    iput-object p1, p0, Lcom/perm/kate/chartview/ChartView$1;->this$0:Lcom/perm/kate/chartview/ChartView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcom/perm/kate/chartview/ChartView$1;->this$0:Lcom/perm/kate/chartview/ChartView;

    invoke-static {v0}, Lcom/perm/kate/chartview/ChartView;->access$000(Lcom/perm/kate/chartview/ChartView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 335
    iget-object v0, p0, Lcom/perm/kate/chartview/ChartView$1;->this$0:Lcom/perm/kate/chartview/ChartView;

    invoke-static {v0}, Lcom/perm/kate/chartview/ChartView;->access$100(Lcom/perm/kate/chartview/ChartView;)Lcom/perm/kate/chartview/LabelAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/perm/kate/chartview/ChartView$1;->this$0:Lcom/perm/kate/chartview/ChartView;

    invoke-static {v0}, Lcom/perm/kate/chartview/ChartView;->access$200(Lcom/perm/kate/chartview/ChartView;)V

    .line 337
    :cond_0
    return-void
.end method
