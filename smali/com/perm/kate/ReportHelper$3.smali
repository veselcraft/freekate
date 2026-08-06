.class Lcom/perm/kate/ReportHelper$3;
.super Lcom/perm/kate/session/Callback;
.source "ReportHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/perm/kate/ReportHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ReportHelper;


# direct methods
.method constructor <init>(Lcom/perm/kate/ReportHelper;Landroid/app/Activity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/ReportHelper;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/perm/kate/ReportHelper$3;->this$0:Lcom/perm/kate/ReportHelper;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/Object;

    .prologue
    .line 80
    move-object v0, p1

    check-cast v0, Ljava/lang/Integer;

    .line 81
    .local v0, "code":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 82
    iget-object v1, p0, Lcom/perm/kate/ReportHelper$3;->this$0:Lcom/perm/kate/ReportHelper;

    invoke-static {v1}, Lcom/perm/kate/ReportHelper;->access$400(Lcom/perm/kate/ReportHelper;)V

    .line 83
    :cond_0
    return-void
.end method
