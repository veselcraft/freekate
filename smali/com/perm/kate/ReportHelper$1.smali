.class Lcom/perm/kate/ReportHelper$1;
.super Ljava/lang/Object;
.source "ReportHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/ReportHelper;->showReportDialog(IJJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ReportHelper;

.field final synthetic val$owner_id:J

.field final synthetic val$post_id:J

.field final synthetic val$report_type:I


# direct methods
.method constructor <init>(Lcom/perm/kate/ReportHelper;IJJ)V
    .locals 1
    .param p1, "this$0"    # Lcom/perm/kate/ReportHelper;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/perm/kate/ReportHelper$1;->this$0:Lcom/perm/kate/ReportHelper;

    iput p2, p0, Lcom/perm/kate/ReportHelper$1;->val$report_type:I

    iput-wide p3, p0, Lcom/perm/kate/ReportHelper$1;->val$post_id:J

    iput-wide p5, p0, Lcom/perm/kate/ReportHelper$1;->val$owner_id:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 35
    iget-object v0, p0, Lcom/perm/kate/ReportHelper$1;->this$0:Lcom/perm/kate/ReportHelper;

    iget v1, p0, Lcom/perm/kate/ReportHelper$1;->val$report_type:I

    iget-wide v2, p0, Lcom/perm/kate/ReportHelper$1;->val$post_id:J

    iget-wide v4, p0, Lcom/perm/kate/ReportHelper$1;->val$owner_id:J

    const/4 v7, 0x0

    move v6, p2

    invoke-static/range {v0 .. v7}, Lcom/perm/kate/ReportHelper;->access$000(Lcom/perm/kate/ReportHelper;IJJILjava/lang/String;)V

    .line 36
    return-void
.end method
