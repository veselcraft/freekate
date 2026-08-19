.class Lcom/perm/kate/ReportHelper$1;
.super Ljava/lang/Object;
.source "ReportHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ReportHelper;

.field final synthetic val$from_news:Z

.field final synthetic val$owner_id:J

.field final synthetic val$post_id:J

.field final synthetic val$report_type:I


# direct methods
.method constructor <init>(Lcom/perm/kate/ReportHelper;IJJZ)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/perm/kate/ReportHelper$1;->this$0:Lcom/perm/kate/ReportHelper;

    iput p2, p0, Lcom/perm/kate/ReportHelper$1;->val$report_type:I

    iput-wide p3, p0, Lcom/perm/kate/ReportHelper$1;->val$post_id:J

    iput-wide p5, p0, Lcom/perm/kate/ReportHelper$1;->val$owner_id:J

    iput-boolean p7, p0, Lcom/perm/kate/ReportHelper$1;->val$from_news:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10

    .line 36
    iget-object v0, p0, Lcom/perm/kate/ReportHelper$1;->this$0:Lcom/perm/kate/ReportHelper;

    iget v1, p0, Lcom/perm/kate/ReportHelper$1;->val$report_type:I

    iget-wide v2, p0, Lcom/perm/kate/ReportHelper$1;->val$post_id:J

    iget-wide v4, p0, Lcom/perm/kate/ReportHelper$1;->val$owner_id:J

    iget-boolean v9, p0, Lcom/perm/kate/ReportHelper$1;->val$from_news:Z

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v6, p2

    invoke-static/range {v0 .. v9}, Lcom/perm/kate/ReportHelper;->access$000(Lcom/perm/kate/ReportHelper;IJJILjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
