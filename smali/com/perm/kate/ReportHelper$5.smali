.class Lcom/perm/kate/ReportHelper$5;
.super Ljava/lang/Object;
.source "ReportHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ReportHelper;

.field final synthetic val$user_id:J


# direct methods
.method constructor <init>(Lcom/perm/kate/ReportHelper;J)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/perm/kate/ReportHelper$5;->this$0:Lcom/perm/kate/ReportHelper;

    iput-wide p2, p0, Lcom/perm/kate/ReportHelper$5;->val$user_id:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10

    if-eqz p2, :cond_3

    const/4 p1, 0x1

    if-eq p2, p1, :cond_2

    const/4 p1, 0x2

    if-eq p2, p1, :cond_1

    const/4 p1, 0x3

    if-eq p2, p1, :cond_0

    const/4 p1, 0x0

    :goto_0
    move-object v7, p1

    goto :goto_1

    :cond_0
    const-string p1, "fraud"

    goto :goto_0

    :cond_1
    const-string p1, "insult"

    goto :goto_0

    :cond_2
    const-string p1, "spam"

    goto :goto_0

    :cond_3
    const-string p1, "porn"

    goto :goto_0

    .line 119
    :goto_1
    iget-object v0, p0, Lcom/perm/kate/ReportHelper$5;->this$0:Lcom/perm/kate/ReportHelper;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/perm/kate/ReportHelper$5;->val$user_id:J

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v0 .. v9}, Lcom/perm/kate/ReportHelper;->access$000(Lcom/perm/kate/ReportHelper;IJJILjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
