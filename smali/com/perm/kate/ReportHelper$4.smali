.class Lcom/perm/kate/ReportHelper$4;
.super Ljava/lang/Object;
.source "ReportHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ReportHelper;


# direct methods
.method constructor <init>(Lcom/perm/kate/ReportHelper;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/perm/kate/ReportHelper$4;->this$0:Lcom/perm/kate/ReportHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 94
    iget-object v0, p0, Lcom/perm/kate/ReportHelper$4;->this$0:Lcom/perm/kate/ReportHelper;

    invoke-static {v0}, Lcom/perm/kate/ReportHelper;->access$200(Lcom/perm/kate/ReportHelper;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/perm/kate/ReportHelper$4;->this$0:Lcom/perm/kate/ReportHelper;

    invoke-static {v1}, Lcom/perm/kate/ReportHelper;->access$200(Lcom/perm/kate/ReportHelper;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f0f052b

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
