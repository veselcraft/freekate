.class Lcom/perm/kate/ReportHelper$3;
.super Lcom/perm/kate/session/Callback;
.source "ReportHelper.java"


# instance fields
.field final synthetic this$0:Lcom/perm/kate/ReportHelper;


# direct methods
.method constructor <init>(Lcom/perm/kate/ReportHelper;Landroid/app/Activity;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/perm/kate/ReportHelper$3;->this$0:Lcom/perm/kate/ReportHelper;

    invoke-direct {p0, p2}, Lcom/perm/kate/session/Callback;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public ready(Ljava/lang/Object;)V
    .locals 1

    .line 84
    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_0

    .line 85
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 86
    iget-object p1, p0, Lcom/perm/kate/ReportHelper$3;->this$0:Lcom/perm/kate/ReportHelper;

    invoke-static {p1}, Lcom/perm/kate/ReportHelper;->access$400(Lcom/perm/kate/ReportHelper;)V

    :cond_0
    return-void
.end method
