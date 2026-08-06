.class Lcom/perm/kate/ReportHelper$5;
.super Ljava/lang/Object;
.source "ReportHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/perm/kate/ReportHelper;->showReportUserDialog(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ReportHelper;

.field final synthetic val$user_id:J


# direct methods
.method constructor <init>(Lcom/perm/kate/ReportHelper;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/perm/kate/ReportHelper;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/perm/kate/ReportHelper$5;->this$0:Lcom/perm/kate/ReportHelper;

    iput-wide p2, p0, Lcom/perm/kate/ReportHelper$5;->val$user_id:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v1, 0x0

    .line 100
    const/4 v7, 0x0

    .line 101
    .local v7, "user_reason":Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 115
    :goto_0
    iget-object v0, p0, Lcom/perm/kate/ReportHelper$5;->this$0:Lcom/perm/kate/ReportHelper;

    iget-wide v2, p0, Lcom/perm/kate/ReportHelper$5;->val$user_id:J

    const-wide/16 v4, 0x0

    move v6, v1

    invoke-static/range {v0 .. v7}, Lcom/perm/kate/ReportHelper;->access$000(Lcom/perm/kate/ReportHelper;IJJILjava/lang/String;)V

    .line 116
    return-void

    .line 103
    :pswitch_0
    const-string v7, "porn"

    .line 104
    goto :goto_0

    .line 106
    :pswitch_1
    const-string v7, "spam"

    .line 107
    goto :goto_0

    .line 109
    :pswitch_2
    const-string v7, "insult"

    .line 110
    goto :goto_0

    .line 112
    :pswitch_3
    const-string v7, "advertisment"

    goto :goto_0

    .line 101
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
